import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loggable/loggable.dart';
import 'package:provider/provider.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import 'package:ugnest/authentication/authentication.dart';
import 'package:ugnest/splash/splash.dart';
import 'package:ugnest/login/login.dart';
import 'package:ugnest/home/home.dart';
import 'package:ugnest/common/common.dart';
import 'package:logging/logging.dart';

class SimpleBlocDelegate extends BlocDelegate with Loggable {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    log.finer('${bloc.runtimeType}: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log.finer('${bloc.runtimeType}: $transition');
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    log.warning('${bloc.runtimeType}: $error');
  }
}

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name.padRight(10)}: ${rec.time}: ${rec.message}');
  });
  final ugnestRepository = UgnestRepository();
  runApp(
    Provider(
      builder: (context) => ugnestRepository,
      dispose: (context, value) => value.dispose(),
      child: BlocProvider<AuthenticationBloc>(
        builder: (context) {
          return AuthenticationBloc(authRepository: ugnestRepository.authRepository)
            ..dispatch(AppStarted());
        },
        child: App(authRepository: ugnestRepository.authRepository),
      ),
    ),
  );
}

class App extends StatelessWidget {
  final AuthRepository authRepository;

  App({Key key, @required this.authRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationAuthenticated) {
            return HomePage();
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginPage(authRepository: authRepository);
          }
          if (state is AuthenticationLoading) {
            return LoadingIndicator();
          }
          return SplashPage();
        },
      ),
    );
  }
}
