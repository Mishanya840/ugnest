import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ugnest/login/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 70, bottom: 15),
                    child: SvgPicture.asset('assets/logo.svg', color:  Colors.cyan.shade400,),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(_getHeadlineText(state),
                        style: Theme.of(context).textTheme.headline,
                        textAlign: TextAlign.center),
                  ),

                  Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: TextFormField(
                            controller: _loginController,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                BlocProvider.of<LoginBloc>(context).add(SelectedLoginByNumber());
                              } else {
                                BlocProvider.of<LoginBloc>(context).add(BackToWelcome());
                              }
                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(Radius.circular(24)),
                                ),
                                hintText: 'Введите email'
                            ),
                          ),
                        ),

                        if (state is RegistrationLoginState || state is LoginUserLoginState)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                                  border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                                  ),
                                  hintText: 'Введите пароль'
                              ),
                            ),
                          ),

                        if (state is CheckRegistrationLoginState)
                          _buildButton(context, 'Продолжить', onPressed: () => BlocProvider.of<LoginBloc>(context).add(CheckLogin(_loginController.text))),

                        if (state is LoginUserLoginState)
                          _buildButton(context, 'Войти', onPressed: () => BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(_loginController.text, _passwordController.text))),

                        if (state is RegistrationLoginState)
                          _buildButton(context, 'Зарегистрироваться', onPressed: () => BlocProvider.of<LoginBloc>(context).add(RegisterButtonPressed(_loginController.text, _passwordController.text))),

                      ],
                    ),
                  ),

                  if (state is WelcomeLoginState)
                    _buildLoginViaSocialNetwork(context),

                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Авторизуясь в приложении, вы принимаете\nусловия ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'пользовательского соглашения',
                              style: TextStyle(color: Theme.of(context).accentColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {

                                },
                            ),
                            TextSpan(
                              text: ', и даете\nсогласие на обработку персональных дынных\nв соответсвии с законодательством',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  )

                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Column _buildLoginViaSocialNetwork(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text('Или войдите через социальную сеть', style: Theme.of(context).textTheme.subhead,),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                    CircleButton(onTap: () {}, iconData: Icons.image),
                    CircleButton(onTap: () {}, iconData: Icons.image),
                    CircleButton(onTap: () {}, iconData: Icons.image),
                    CircleButton(onTap: () {}, iconData: Icons.image),
                    CircleButton(onTap: () {}, iconData: Icons.image),
                  ],),
                ],
              );
  }

  String _getHeadlineText(LoginState state) {
      if (state is WelcomeLoginState || state is CheckRegistrationLoginState) {
        return 'Добро пожаловсть\nв Уютное гнездышко!';
      } else if (state is LoginUserLoginState) {
        return 'Добрый день!';
      } else if (state is RegistrationLoginState) {
        return 'Благодарим вас\nза регистрацию!';
      } else if (state is RestorePasswordLoginState) {
        return 'Проверьте свои СМС,\nмы отправили код';
      } else {
        return '-';
      }
  }

  SizedBox _buildButton(BuildContext context, String text, {VoidCallback onPressed}) {
    return SizedBox.fromSize(
                    size: Size.fromHeight(40),
                    child: RaisedButton(
                      textTheme: onPressed == null ? null : ButtonTextTheme.primary,
                      color: Theme.of(context).primaryColor,
                      disabledColor: Colors.grey.shade400,
                      disabledTextColor: Colors.white,
                      shape: OutlineInputBorder(
                        borderSide: const BorderSide(style: BorderStyle.none),
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                      ),
                      onPressed: onPressed,
                      child: Text(text),
                    ),
                  );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;

  const CircleButton({
    Key key,
    this.onTap,
    this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 40.0;

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkResponse(
        onTap: onTap ?? () {},
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber.shade400
          ),
          child: Icon(
            iconData,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
