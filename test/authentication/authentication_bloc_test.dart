import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import 'package:ugnest/authentication/authentication.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  AuthenticationBloc authenticationBloc;
  MockAuthRepository authRepository;

  setUp(() {
    authRepository = MockAuthRepository();
    authenticationBloc = AuthenticationBloc(authRepository: authRepository);
  });

  test('initial state is correct', () {
    expect(authenticationBloc.initialState, AuthenticationUninitialized());
  });

  test('dispose does not emit new states', () {
    expectLater(
      authenticationBloc.state,
      emitsInOrder([AuthenticationUninitialized(), emitsDone]),
    );
    authenticationBloc.dispose();
  });

  group('AppStarted', () {
    test('emits [uninitialized, unauthenticated] for invalid token', () {
      final expectedResponse = [
        AuthenticationUninitialized(),
        AuthenticationUnauthenticated()
      ];

//      when(authRepository.hasToken()).thenAnswer((_) => Future.value(false));

      expectLater(
        authenticationBloc.state,
        emitsInOrder(expectedResponse),
      );

      authenticationBloc.dispatch(AppStarted());
    });
  });

  group('LoggedIn', () {
    test(
        'emits [uninitialized, loading, authenticated] when token is persisted',
        () {
      final expectedResponse = [
        AuthenticationUninitialized(),
        AuthenticationLoading(),
        AuthenticationAuthenticated(),
      ];

      expectLater(
        authenticationBloc.state,
        emitsInOrder(expectedResponse),
      );

      authenticationBloc.dispatch(LoggedIn(
        token: 'instance.token',
      ));
    });
  });

  group('LoggedOut', () {
    test(
        'emits [uninitialized, loading, unauthenticated] when token is deleted',
        () {
      final expectedResponse = [
        AuthenticationUninitialized(),
        AuthenticationLoading(),
        AuthenticationUnauthenticated(),
      ];

      expectLater(
        authenticationBloc.state,
        emitsInOrder(expectedResponse),
      );

      authenticationBloc.dispatch(LoggedOut());
    });
  });
}
