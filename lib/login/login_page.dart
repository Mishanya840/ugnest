import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ugnest/user_notification/bloc.dart';
import 'package:ugnest/user_notification/user_notification_bloc.dart';
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
      body: BlocListener<UserNotificationBloc, UserNotificationState>(
        listener: (context, state) {
          if (state.message?.isNotEmpty ?? false) {
            Scaffold.of(context).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: BlocProvider(
          builder: (context) {
            return LoginBloc(
              authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
              userNotificationBloc: BlocProvider.of<UserNotificationBloc>(context),
              authRepository: authRepository,
            );
          },
          child: LoginForm(),
        ),
      ),
    );
  }
}
