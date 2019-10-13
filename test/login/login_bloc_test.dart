import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import 'package:ugnest/authentication/authentication.dart';
import 'package:ugnest/login/login.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  LoginBloc loginBloc;
  MockAuthRepository authRepository;
  MockAuthenticationBloc authenticationBloc;

  setUp(() {
    authRepository = MockAuthRepository();
    authenticationBloc = MockAuthenticationBloc();
    loginBloc = LoginBloc(
      authRepository: authRepository,
      authenticationBloc: authenticationBloc,
    );
  });

  test('initial state is correct', () {
    expect(LoginInitial(), loginBloc.initialState);
  });

  test('dispose does not emit new states', () {
    expectLater(
      loginBloc.state,
      emitsInOrder([LoginInitial(), emitsDone]),
    );
    loginBloc.dispose();
  });

  group('LoginButtonPressed', () {
    test('emits token on success', () {
      final expectedResponse = [
        LoginInitial(),
        LoginLoading(),
        LoginInitial(),
      ];

      when(authRepository.login(
        phone: 'valid.username',
        password: 'valid.password',
      )).thenAnswer((_) => Future.value('token'));

      expectLater(
        loginBloc.state,
        emitsInOrder(expectedResponse),
      ).then((_) {
        verify(authenticationBloc.dispatch(LoggedIn(token: 'token'))).called(1);
      });

      loginBloc.dispatch(LoginButtonPressed(
        username: 'valid.username',
        password: 'valid.password',
      ));
    });
  });
}
