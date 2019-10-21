import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:jsonrpc2/client_base.dart';
import 'package:meta/meta.dart';
import 'package:ugnest/authentication/authentication.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthRepository authRepository;
  final UsersRepository usersRepository;

  AuthenticationBloc({@required this.authRepository, @required this.usersRepository})
      : assert(authRepository != null);

  @override
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      final String token = await BasePreferences.getAuthToken();

      if (token?.isNotEmpty ?? false) {
        try {
          await usersRepository.me();
          yield AuthenticationAuthenticated();
        } on RemoteException catch (e) {
          yield AuthenticationUnauthenticated();
        }
      } else {
        yield AuthenticationUnauthenticated();
      }
    }

    if (event is LoggedIn) {
      yield AuthenticationLoading();
      await BasePreferences.setAuthToken(event.token);
      yield AuthenticationAuthenticated();
    }

    if (event is LoggedOut) {
      yield AuthenticationLoading();
      await BasePreferences.setAuthToken(null);
      yield AuthenticationUnauthenticated();
    }
  }
}
