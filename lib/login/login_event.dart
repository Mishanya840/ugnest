import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {}

class SelectedLoginByNumber extends LoginEvent {
  @override List<Object> get props => [];
}

class CheckNumber extends LoginEvent {
  final String phone;
  CheckNumber(this.phone);
  @override List<Object> get props => [phone];
}

class LoginButtonPressed extends LoginEvent {
  final String password;

  LoginButtonPressed(this.password);

  @override List<Object> get props => [password];
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



