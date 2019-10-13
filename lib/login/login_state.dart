import 'package:equatable/equatable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'login_state.g.dart';

abstract class LoginState {}

abstract class WelcomeLoginState implements LoginState, Built<WelcomeLoginState, WelcomeLoginStateBuilder> {

  WelcomeLoginState._();
  factory WelcomeLoginState([void Function(WelcomeLoginStateBuilder) updates]) = _$WelcomeLoginState;
  static Serializer<WelcomeLoginState> get serializer => _$welcomeLoginStateSerializer;
}
abstract class PhoneNumberFormLoginState implements Built<PhoneNumberFormLoginState, PhoneNumberFormLoginStateBuilder> {

  PhoneNumberFormLoginState._();
  factory PhoneNumberFormLoginState([void Function(PhoneNumberFormLoginStateBuilder) updates]) = _$PhoneNumberFormLoginState;
  static Serializer<PhoneNumberFormLoginState> get serializer => _$phoneNumberFormLoginStateSerializer;
}

abstract class LoginUserLoginState implements Built<LoginUserLoginState, LoginUserLoginStateBuilder> {
  @nullable String get userName;
  bool get wrongPassword;
  String get phone;

  LoginUserLoginState._();
  factory LoginUserLoginState([void Function(LoginUserLoginStateBuilder) updates]) = _$LoginUserLoginState;
  static Serializer<LoginUserLoginState> get serializer => _$loginUserLoginStateSerializer;
}

enum ConfirmRegistrationStatus {confirmCodeSent, wrongConfirmCode}

abstract class RestorePasswordLoginState implements Built<RestorePasswordLoginState, RestorePasswordLoginStateBuilder> {
  ConfirmRegistrationStatus get status;
  String get phone;

  RestorePasswordLoginState._();
  factory RestorePasswordLoginState([void Function(RestorePasswordLoginStateBuilder) updates]) = _$RestorePasswordLoginState;
  static Serializer<RestorePasswordLoginState> get serializer => _$restorePasswordLoginStateSerializer;
}


abstract class ConfirmRegistrationLoginState implements Built<ConfirmRegistrationLoginState, ConfirmRegistrationLoginStateBuilder> {
  ConfirmRegistrationStatus get status;
  String get phone;

  ConfirmRegistrationLoginState._();
  factory ConfirmRegistrationLoginState([void Function(ConfirmRegistrationLoginStateBuilder) updates]) = _$ConfirmRegistrationLoginState;
  static Serializer<ConfirmRegistrationLoginState> get serializer => _$confirmRegistrationLoginStateSerializer;
}


