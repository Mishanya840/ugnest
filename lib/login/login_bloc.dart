import 'dart:async';

import 'package:loggable/loggable.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import 'package:ugnest/authentication/authentication.dart';
import 'package:ugnest/login/login.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> with Loggable {
  final AuthRepository authRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    @required this.authRepository,
    @required this.authenticationBloc,
  })  : assert(authRepository != null),
        assert(authenticationBloc != null);

  @override
  LoginState get initialState => WelcomeLoginState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    var currState = currentState;
    if (event is SelectedLoginByNumber && currState is WelcomeLoginState) {
      yield PhoneNumberFormLoginState();
    }

    var curState = currentState;
    if (event is LoginButtonPressed && curState is LoginUserLoginState) {
      //yield LoginLoading();

      try {
        final token = await authRepository.login(
          phone: (curState as LoginUserLoginState).phone,
          password: event.password,
        );
        log.finer('token: $token');

        authenticationBloc.dispatch(LoggedIn(token: token));
        //yield LoginInitial();
      } catch (error) {
        //yield LoginFailure(error.toString());
      }
    }
  }
}
