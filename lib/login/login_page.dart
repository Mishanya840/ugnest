import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import 'package:ugnest/authentication/authentication.dart';
import 'package:ugnest/login/login.dart';

class LoginPage extends StatelessWidget {
  final AuthRepository authRepository;

  LoginPage({Key key, @required this.authRepository})
      : assert(authRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        builder: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            authRepository: authRepository,
          );
        },
        child: LoginForm(),
      ),
    );
  }
}
