library ugnest_repositories;

import 'package:jsonrpc2/jsonrpc_io_client.dart';

import 'src/repository/auth_repository.dart';

export 'src/repository/auth_repository.dart';
export 'src/util/base_preferences.dart';

class  UgnestRepository {
  final ServerProxy proxy;

  AuthRepository _authRepository;

  UgnestRepository(String url)
      : proxy = ServerProxy(url)
  {
    _authRepository = AuthRepository(proxy);
  }

  void dispose() {

  }

  AuthRepository get authRepository => _authRepository;
}
