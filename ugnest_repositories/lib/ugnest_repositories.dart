library ugnest_repositories;

import 'src/repository/auth_repository.dart';
import 'src/repository/users_repository.dart';
import 'src/server_proxy.dart';

export 'src/model/models.dart';
export 'src/repository/auth_repository.dart';
export 'src/repository/users_repository.dart';
export 'src/util/base_preferences.dart';

class UgnestRepository {
  final SimpleServerProxy proxy;

  AuthRepository _authRepository;
  UsersRepository _usersRepository;

  UgnestRepository(String url)
      : proxy = SimpleServerProxy(url)
  {
    _authRepository = AuthRepository(proxy);
    _usersRepository = UsersRepository(proxy);
  }

  void dispose() {

  }

  AuthRepository get authRepository => _authRepository;
  UsersRepository get usersRepository => _usersRepository;
}
