library ugnest_repositories;

import 'package:jsonrpc2/jsonrpc_io_client.dart';

import 'src/repository/auth_repository.dart';

export 'src/repository/auth_repository.dart';
export 'src/util/base_preferences.dart';

class  UgnestRepository {
  final ServerProxy proxy;

  AuthRepository _authRepository;

  UgnestRepository()
      : proxy = ServerProxy('https://m.ugnest.com/rpc/v1')
  {
    _authRepository = AuthRepository(proxy);
  }

  void dispose() {

  }

  AuthRepository get authRepository => _authRepository;
}
