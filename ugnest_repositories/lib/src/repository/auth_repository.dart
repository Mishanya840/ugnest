import 'dart:async';

import 'package:meta/meta.dart';
import 'package:ugnest_repositories/src/util/base_preferences.dart';
import 'package:jsonrpc2/jsonrpc_io_client.dart';
import 'package:loggable/loggable.dart';
import '../util/server_proxy_util.dart';

class AuthRepository with Loggable {
  final ServerProxy _proxy;

  AuthRepository(this._proxy);

  Future<bool> checkLogin({
    @required String login
  }) {
    return _proxy.call('auth.CheckLogin', {
      "login": login,
    }).then((returned) => ServerProxyUtil.checkError(returned));
  }

  Future<String> checkRestoreToken({
    @required String token
  }) {
    return _proxy.call('auth.CheckRestoreToken', {
      "token": token,
    }).then((returned) => ServerProxyUtil.checkError(returned));
  }

  Future<String> confirmRestore({
    @required String token,
    @required String code,
    @required String password,
  }) {
    return _proxy.call('auth.ConfirmRestore', {
      "token": token,
      "code": code,
      "password": password,
    }).then((returned) => ServerProxyUtil.checkError(returned));
  }

  Future<String> login({
    @required String phone,
    @required String password,
  }) {
    return _proxy.call('auth.Login', {
      "phone": phone,
      "password": password
    }).then((returned) => ServerProxyUtil.checkError(returned));
  }

  Future<String> loginWithVk({
    @required String redirectURI,
    @required String code,
  }) {
    return _proxy.call('auth.LoginWithVk', {
      "redirectURI": redirectURI,
      "code": code,
    }).then((returned) => ServerProxyUtil.checkError(returned));
  }

  Future<String> reg({
    @required String phone,
    @required String password,
    String sessionId,
    String code,
  }) {
    return _proxy.call('auth.Reg',{
      "phone": phone,
      "password": password,
      "sessionId": sessionId,
      "code": code
    })
        .then((returned) => ServerProxyUtil.checkError(returned));
  }

  /// success - number
  /// error - "code":506,"message":"send sms rate limit exceeded"
  Future<String> sendCode({
    @required String phone
  }) {
    return _proxy.call('auth.SendCode',{
      "phone": phone,
    }).then((returned) => ServerProxyUtil.checkError(returned));
  }

  Future<String> sendRestore({
    @required String login
  }) {
    return _proxy.call('auth.SendRestore',{
      "login": login,
    }).then((returned) => ServerProxyUtil.checkError(returned));
  }



  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    BasePreferences.setAuthToken(token);
    return;
  }

  Future<bool> hasToken() async {
    return (await BasePreferences.getAuthToken())?.isNotEmpty ?? false;
  }

}
