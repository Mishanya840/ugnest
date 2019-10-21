import "dart:async";
import "dart:convert";
import "dart:io";

import 'package:jsonrpc2/client_base.dart';
import 'package:ugnest_repositories/src/util/base_preferences.dart';

class SimpleServerProxy extends ServerProxyBase {
  /// Do we want this connection to be persistent?
  bool persistentConnection;

  /// constructor. superize properly
  SimpleServerProxy(String url, [this.persistentConnection = true]) : super(url);

  /// [executeRequest], overriding the abstract method
  ///
  /// return a future with the JSON-RPC response
  Future<dynamic> executeRequest(dynamic package) async {
    /// init a client connection
    HttpClient conn = HttpClient();

    /// make a String payload from the request package
    String payload;
    try {
      payload = json.encode(package);
    } catch (e) {
      throw UnsupportedError('Item ($package) could not be serialized to JSON');
    }

    /// make a Http request, POSTing the payload and setting an appropriate
    /// content-type
    HttpClientRequest request = await conn.postUrl(Uri.parse(url));
    request.headers.add(HttpHeaders.contentTypeHeader, 'application/json; charset=UTF-8');
    request.headers.add(HttpHeaders.authorizationHeader, Uri.decodeFull('Bearer ${await BasePreferences.getAuthToken()}'));

    /// Implementation detail: persistentConnection (default) leads to 15-second delay returning at end of script
    /// Set it to false if you are impatient. Makes little difference unless you are waiting for a testing script.
    request.persistentConnection = persistentConnection;

    request.write(payload);
    HttpClientResponse response = await request.close();

    String jsonContent = '';
    Completer c = Completer();

    utf8.decoder.bind(response).listen((dynamic contents) {
      jsonContent += contents.toString();
    }, onDone: () {
      if (response.statusCode == 204 || jsonContent.isEmpty) {
        c.complete(null);
      } else if (response.statusCode == 200) {
        c.complete(json.decode(jsonContent));
      } else {
        c.completeError(
            TransportStatusError(response.statusCode, response, package));
      }
    });

    return c.future;
  }
}
