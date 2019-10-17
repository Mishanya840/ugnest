import 'dart:async';

import 'package:loggable/loggable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:ugnest/user_notification/bloc.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import 'package:ugnest/authentication/authentication.dart';
import 'package:ugnest/login/login.dart';
import 'package:jsonrpc2/client_base.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> with Loggable {
  final AuthRepository authRepository;
  final AuthenticationBloc authenticationBloc;
  final UserNotificationBloc userNotificationBloc;

  LoginBloc({
    @required this.authRepository,
    @required this.authenticationBloc,
    @required this.userNotificationBloc,
  })  : assert(authRepository != null),
        assert(authenticationBloc != null);

  @override
  LoginState get initialState => WelcomeLoginState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is CheckLogin) {
      yield* _handleCheckLogin(event);
    } else if (event is BackToWelcome) {
      yield* _handleBackToWelcome(event);
    } else if (event is SelectedLoginByNumber) {
      yield* _handleSelectedLoginByNumber(event);
    } else if (event is LoginButtonPressed) {
      yield* _handleLoginButtonPressed(event);
    } else if (event is RegisterButtonPressed) {
      yield* _handleRegisterButtonPressed(event);
    }
  }

  Stream<LoginState> _handleLoginButtonPressed(LoginButtonPressed event) async* {
    try {
      final result = await authRepository.login(
        login: event.login,
        password: event.password,
      );
      log.finer('Login: $result');

      authenticationBloc.dispatch(LoggedIn(token: result['token']));
    } on RemoteException catch (error) {
      log.warning('Login error: $error');
      userNotificationBloc.dispatch(HttpError(error.code, error.message));
    } catch (error) {
      log.warning('Login error: $error');
    }
  }

  Stream<LoginState> _handleRegisterButtonPressed(RegisterButtonPressed event) async* {
    try {
      final result = await authRepository.reg(
        login: event.login,
        password: event.password,
      );
      log.finer('Register: $result');

      authenticationBloc.dispatch(LoggedIn(token: result['token']));
    } on RemoteException catch (error) {
      log.warning('Register error: $error');
      userNotificationBloc.dispatch(HttpError(error.code, error.message));
    } catch (error) {
      log.warning('Register error: $error');
    }
  }

  Stream<LoginState> _handleCheckLogin(CheckLogin event) async* {
      var checkLogin;
      try {
        log.finer('checkLogin: $event.login');
        checkLogin = await authRepository.checkLogin(
            login: event.login
        );
      } on RemoteException catch (error) {
        log.warning('checkLogin error: $error');
//        userNotificationBloc.dispatch(HttpError(error.code, error.message));
        checkLogin = false;
      } catch (error) {
        log.warning('checkLogin error: $error');
      }

        log.finer('checkLogin result: $checkLogin');

        if (checkLogin == null) {
          return;
        } else if (checkLogin) {
          yield LoginUserLoginState();
        } else {
          yield RegistrationLoginState();
        }
  }

  Stream<LoginState> _handleBackToWelcome(BackToWelcome event) async* {
    if (currentState is CheckRegistrationLoginState) {
      yield WelcomeLoginState();
    }
  }

  Stream<LoginState> _handleSelectedLoginByNumber(SelectedLoginByNumber event) async* {
    if (currentState is WelcomeLoginState) {
      yield CheckRegistrationLoginState();
    }
  }
}
