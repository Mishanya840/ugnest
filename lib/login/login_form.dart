import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:ugnest/login/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);


    return BlocListener<LoginBloc, LoginState>(
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
                  child: Text('Добро пожаловсть\nв Уютное гнездышко!',
                      style: Theme.of(context).textTheme.headline,
                      textAlign: TextAlign.center),
                ),

                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            MaskTextInputFormatter(mask: '+7 (###) ###-##-##', filter: { "#": RegExp(r'[0-9]') })
                          ],
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                              ),
                              hintText: 'Введите номер телефона'
                          ),
                          controller: _phoneController,
                        ),
                      ),
                    // FIXME: 2
                    SizedBox.fromSize(
                      size: Size.fromHeight(50),
                      child: RaisedButton(
                        onPressed: () {},//null,
                        child: Text('Продолжить'),
                      ),
                    ),
                    ],
                  ),
                ),
                // FIXME: 1
                Column(
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
                      CircleButton(onTap: () {}, iconData: Icons.exposure_plus_1),
                      CircleButton(onTap: () {}, iconData: Icons.exposure_plus_1),
                      CircleButton(onTap: () {}, iconData: Icons.exposure_plus_1),
                      CircleButton(onTap: () {}, iconData: Icons.exposure_plus_1),
                      CircleButton(onTap: () {}, iconData: Icons.exposure_plus_1),
                    ],),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Авторизуясь в приложении, вы принимаете\nусловия ',
                            style: new TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'пользовательского соглашения',
                            style: new TextStyle(color: Colors.orange),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {

                              },
                          ),
                          TextSpan(
                            text: ', и даете\nсогласие на обработку персональных дынных\nв соответсвии с законодательством',
                            style: new TextStyle(color: Colors.black),
                          ),
                        ],
                      )),
                )

              ],
            ),
          );
        },
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
      child: new InkResponse(
        onTap: onTap ?? () {},
        child: new Container(
          width: size,
          height: size,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber.shade400
          ),
          child: new Icon(
            iconData,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
