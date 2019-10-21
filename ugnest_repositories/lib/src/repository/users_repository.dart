import 'dart:async';

import 'package:loggable/loggable.dart';
import 'package:ugnest_repositories/src/model/models.dart';

import '../server_proxy.dart';
import '../util/server_proxy_util.dart';

class UsersRepository with Loggable {
  final SimpleServerProxy _proxy;

  UsersRepository(this._proxy);

  Future<List<Attribute>> attributes() async {
    return ((await ServerProxyUtil.checkError(await _proxy.call('users.Attributes'))) as List)
        ?.map((v) => Attribute.fromJson(v))
        ?.toList();
  }

  Future<User> me() async {
    return User.fromJson(await ServerProxyUtil.checkError(await _proxy.call('users.Me')));
  }

  Future<dynamic> save(List<Attribute> attributes) async {
    return await ServerProxyUtil.checkError(await _proxy.call('users.Save', {
      'attributes': attributes
    }));
  }
}
