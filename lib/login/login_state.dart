import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_state.g.dart';

abstract class LoginState {}

abstract class WelcomeLoginState implements LoginState, Built<WelcomeLoginState, WelcomeLoginStateBuilder> {

  WelcomeLoginState._();
  factory WelcomeLoginState([void Function(WelcomeLoginStateBuilder) updates]) = _$WelcomeLoginState;
  static Serializer<WelcomeLoginState> get serializer => _$welcomeLoginStateSerializer;
}
abstract class CheckRegistrationLoginState implements LoginState, Built<CheckRegistrationLoginState, CheckRegistrationLoginStateBuilder> {

  CheckRegistrationLoginState._();
  factory CheckRegistrationLoginState([void Function(CheckRegistrationLoginStateBuilder) updates]) = _$CheckRegistrationLoginState;
  static Serializer<CheckRegistrationLoginState> get serializer => _$checkRegistrationLoginStateSerializer;
}

abstract class LoginUserLoginState implements LoginState, Built<LoginUserLoginState, LoginUserLoginStateBuilder> {

  LoginUserLoginState._();
  factory LoginUserLoginState([void Function(LoginUserLoginStateBuilder) updates]) = _$LoginUserLoginState;
  static Serializer<LoginUserLoginState> get serializer => _$loginUserLoginStateSerializer;
}

enum ConfirmCodeStatus {confirmCodeSent, wrongConfirmCode}

abstract class RestorePasswordLoginState implements LoginState, Built<RestorePasswordLoginState, RestorePasswordLoginStateBuilder> {
  @nullable  ConfirmCodeStatus get status;

  RestorePasswordLoginState._();
  factory RestorePasswordLoginState([void Function(RestorePasswordLoginStateBuilder) updates]) = _$RestorePasswordLoginState;
  static Serializer<RestorePasswordLoginState> get serializer => _$restorePasswordLoginStateSerializer;
}

abstract class RegistrationLoginState implements LoginState, Built<RegistrationLoginState, RegistrationLoginStateBuilder> {
  @nullable ConfirmCodeStatus get status;

  RegistrationLoginState._();
  factory RegistrationLoginState([void Function(RegistrationLoginStateBuilder) updates]) = _$RegistrationLoginState;
  static Serializer<RegistrationLoginState> get serializer => _$registrationLoginStateSerializer;
}


