import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {}

class SelectedLoginByNumber extends LoginEvent {
  @override List<Object> get props => [];
}

class BackToWelcome extends LoginEvent {
  @override List<Object> get props => [];
}

class CheckLogin extends LoginEvent {
  final String login;
  CheckLogin(this.login);
  @override List<Object> get props => [login];
}

class LoginButtonPressed extends LoginEvent {
  final String login;
  final String password;

  LoginButtonPressed(this.login, this.password);

  @override List<Object> get props => [login, password];
}

class RegisterButtonPressed extends LoginEvent {
  final String login;
  final String password;

  RegisterButtonPressed(this.login, this.password);

  @override List<Object> get props => [login, password];
}

class CheckRestoreCode extends LoginEvent {
  final String confirmCode;

  CheckRestoreCode(this.confirmCode);

  @override List<Object> get props => [confirmCode];
}

class ResendRestoreCode extends LoginEvent {
  @override List<Object> get props => [];
}

class CheckRegistrationCode extends LoginEvent {
  final String registrationCode;

  CheckRegistrationCode(this.registrationCode);

  @override List<Object> get props => [registrationCode];
}

class ResendRegistrationCode extends LoginEvent {
  @override List<Object> get props => [];
}



