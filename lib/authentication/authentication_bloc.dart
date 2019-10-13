import 'dart:async';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import 'package:ugnest/authentication/authentication.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthRepository authRepository;

  AuthenticationBloc({@required this.authRepository})
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
        yield AuthenticationAuthenticated();
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
