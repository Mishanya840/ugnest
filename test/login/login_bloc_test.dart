import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:ugnest/user_notification/bloc.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import 'package:ugnest/authentication/authentication.dart';
import 'package:ugnest/login/login.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

class MockUserNotificationBloc extends Mock implements UserNotificationBloc {}

void main() {
  LoginBloc loginBloc;
  MockAuthRepository authRepository;
  MockAuthenticationBloc authenticationBloc;
  MockUserNotificationBloc userNotificationBloc;

  setUp(() {
    authRepository = MockAuthRepository();
    authenticationBloc = MockAuthenticationBloc();
    userNotificationBloc = MockUserNotificationBloc();
    loginBloc = LoginBloc(
      authRepository: authRepository,
      userNotificationBloc: userNotificationBloc,
      authenticationBloc: authenticationBloc,
    );
  });

  test('initial state is correct', () {
    expect(WelcomeLoginState(), loginBloc.initialState);
  });

  test('close does not emit new states', () {
    expectLater(
      loginBloc.state,
      emitsInOrder([WelcomeLoginState(), emitsDone]),
    );
    loginBloc.close();
  });

  group('LoginButtonPressed', () {
    test('emits token on success', () {
      final expectedResponse = [
        WelcomeLoginState(),
        WelcomeLoginState(),
        WelcomeLoginState(),
      ];

      when(authRepository.login(
        login: 'valid.username',
        password: 'valid.password',
      )).thenAnswer((_) => Future.value({'token':'123'}));

      expectLater(
        loginBloc.state,
        emitsInOrder(expectedResponse),
      ).then((_) {
        verify(authenticationBloc.add(LoggedIn(token: '123'))).called(1);
      });

      loginBloc.add(LoginButtonPressed('valid.username', 'valid.password'));
    });
  });
}
