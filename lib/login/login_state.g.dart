// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WelcomeLoginState> _$welcomeLoginStateSerializer =
    new _$WelcomeLoginStateSerializer();
Serializer<CheckRegistrationLoginState>
    _$checkRegistrationLoginStateSerializer =
    new _$CheckRegistrationLoginStateSerializer();
Serializer<LoginUserLoginState> _$loginUserLoginStateSerializer =
    new _$LoginUserLoginStateSerializer();
Serializer<RestorePasswordLoginState> _$restorePasswordLoginStateSerializer =
    new _$RestorePasswordLoginStateSerializer();
Serializer<RegistrationLoginState> _$registrationLoginStateSerializer =
    new _$RegistrationLoginStateSerializer();

class _$WelcomeLoginStateSerializer
    implements StructuredSerializer<WelcomeLoginState> {
  @override
  final Iterable<Type> types = const [WelcomeLoginState, _$WelcomeLoginState];
  @override
  final String wireName = 'WelcomeLoginState';

  @override
  Iterable<Object> serialize(Serializers serializers, WelcomeLoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  WelcomeLoginState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new WelcomeLoginStateBuilder().build();
  }
}

class _$CheckRegistrationLoginStateSerializer
    implements StructuredSerializer<CheckRegistrationLoginState> {
  @override
  final Iterable<Type> types = const [
    CheckRegistrationLoginState,
    _$CheckRegistrationLoginState
  ];
  @override
  final String wireName = 'CheckRegistrationLoginState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CheckRegistrationLoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  CheckRegistrationLoginState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new CheckRegistrationLoginStateBuilder().build();
  }
}

class _$LoginUserLoginStateSerializer
    implements StructuredSerializer<LoginUserLoginState> {
  @override
  final Iterable<Type> types = const [
    LoginUserLoginState,
    _$LoginUserLoginState
  ];
  @override
  final String wireName = 'LoginUserLoginState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, LoginUserLoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  LoginUserLoginState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new LoginUserLoginStateBuilder().build();
  }
}

class _$RestorePasswordLoginStateSerializer
    implements StructuredSerializer<RestorePasswordLoginState> {
  @override
  final Iterable<Type> types = const [
    RestorePasswordLoginState,
    _$RestorePasswordLoginState
  ];
  @override
  final String wireName = 'RestorePasswordLoginState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RestorePasswordLoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(ConfirmCodeStatus)));
    }
    return result;
  }

  @override
  RestorePasswordLoginState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestorePasswordLoginStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(ConfirmCodeStatus))
              as ConfirmCodeStatus;
          break;
      }
    }

    return result.build();
  }
}

class _$RegistrationLoginStateSerializer
    implements StructuredSerializer<RegistrationLoginState> {
  @override
  final Iterable<Type> types = const [
    RegistrationLoginState,
    _$RegistrationLoginState
  ];
  @override
  final String wireName = 'RegistrationLoginState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RegistrationLoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(ConfirmCodeStatus)));
    }
    return result;
  }

  @override
  RegistrationLoginState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegistrationLoginStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(ConfirmCodeStatus))
              as ConfirmCodeStatus;
          break;
      }
    }

    return result.build();
  }
}

class _$WelcomeLoginState extends WelcomeLoginState {
  factory _$WelcomeLoginState(
          [void Function(WelcomeLoginStateBuilder) updates]) =>
      (new WelcomeLoginStateBuilder()..update(updates)).build();

  _$WelcomeLoginState._() : super._();

  @override
  WelcomeLoginState rebuild(void Function(WelcomeLoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WelcomeLoginStateBuilder toBuilder() =>
      new WelcomeLoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WelcomeLoginState;
  }

  @override
  int get hashCode {
    return 512164119;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('WelcomeLoginState').toString();
  }
}

class WelcomeLoginStateBuilder
    implements Builder<WelcomeLoginState, WelcomeLoginStateBuilder> {
  _$WelcomeLoginState _$v;

  WelcomeLoginStateBuilder();

  @override
  void replace(WelcomeLoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WelcomeLoginState;
  }

  @override
  void update(void Function(WelcomeLoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WelcomeLoginState build() {
    final _$result = _$v ?? new _$WelcomeLoginState._();
    replace(_$result);
    return _$result;
  }
}

class _$CheckRegistrationLoginState extends CheckRegistrationLoginState {
  factory _$CheckRegistrationLoginState(
          [void Function(CheckRegistrationLoginStateBuilder) updates]) =>
      (new CheckRegistrationLoginStateBuilder()..update(updates)).build();

  _$CheckRegistrationLoginState._() : super._();

  @override
  CheckRegistrationLoginState rebuild(
          void Function(CheckRegistrationLoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckRegistrationLoginStateBuilder toBuilder() =>
      new CheckRegistrationLoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckRegistrationLoginState;
  }

  @override
  int get hashCode {
    return 601433749;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CheckRegistrationLoginState')
        .toString();
  }
}

class CheckRegistrationLoginStateBuilder
    implements
        Builder<CheckRegistrationLoginState,
            CheckRegistrationLoginStateBuilder> {
  _$CheckRegistrationLoginState _$v;

  CheckRegistrationLoginStateBuilder();

  @override
  void replace(CheckRegistrationLoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckRegistrationLoginState;
  }

  @override
  void update(void Function(CheckRegistrationLoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckRegistrationLoginState build() {
    final _$result = _$v ?? new _$CheckRegistrationLoginState._();
    replace(_$result);
    return _$result;
  }
}

class _$LoginUserLoginState extends LoginUserLoginState {
  factory _$LoginUserLoginState(
          [void Function(LoginUserLoginStateBuilder) updates]) =>
      (new LoginUserLoginStateBuilder()..update(updates)).build();

  _$LoginUserLoginState._() : super._();

  @override
  LoginUserLoginState rebuild(
          void Function(LoginUserLoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginUserLoginStateBuilder toBuilder() =>
      new LoginUserLoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginUserLoginState;
  }

  @override
  int get hashCode {
    return 397997923;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LoginUserLoginState').toString();
  }
}

class LoginUserLoginStateBuilder
    implements Builder<LoginUserLoginState, LoginUserLoginStateBuilder> {
  _$LoginUserLoginState _$v;

  LoginUserLoginStateBuilder();

  @override
  void replace(LoginUserLoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginUserLoginState;
  }

  @override
  void update(void Function(LoginUserLoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginUserLoginState build() {
    final _$result = _$v ?? new _$LoginUserLoginState._();
    replace(_$result);
    return _$result;
  }
}

class _$RestorePasswordLoginState extends RestorePasswordLoginState {
  @override
  final ConfirmCodeStatus status;

  factory _$RestorePasswordLoginState(
          [void Function(RestorePasswordLoginStateBuilder) updates]) =>
      (new RestorePasswordLoginStateBuilder()..update(updates)).build();

  _$RestorePasswordLoginState._({this.status}) : super._();

  @override
  RestorePasswordLoginState rebuild(
          void Function(RestorePasswordLoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestorePasswordLoginStateBuilder toBuilder() =>
      new RestorePasswordLoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestorePasswordLoginState && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestorePasswordLoginState')
          ..add('status', status))
        .toString();
  }
}

class RestorePasswordLoginStateBuilder
    implements
        Builder<RestorePasswordLoginState, RestorePasswordLoginStateBuilder> {
  _$RestorePasswordLoginState _$v;

  ConfirmCodeStatus _status;
  ConfirmCodeStatus get status => _$this._status;
  set status(ConfirmCodeStatus status) => _$this._status = status;

  RestorePasswordLoginStateBuilder();

  RestorePasswordLoginStateBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestorePasswordLoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RestorePasswordLoginState;
  }

  @override
  void update(void Function(RestorePasswordLoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestorePasswordLoginState build() {
    final _$result = _$v ?? new _$RestorePasswordLoginState._(status: status);
    replace(_$result);
    return _$result;
  }
}

class _$RegistrationLoginState extends RegistrationLoginState {
  @override
  final ConfirmCodeStatus status;

  factory _$RegistrationLoginState(
          [void Function(RegistrationLoginStateBuilder) updates]) =>
      (new RegistrationLoginStateBuilder()..update(updates)).build();

  _$RegistrationLoginState._({this.status}) : super._();

  @override
  RegistrationLoginState rebuild(
          void Function(RegistrationLoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationLoginStateBuilder toBuilder() =>
      new RegistrationLoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationLoginState && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationLoginState')
          ..add('status', status))
        .toString();
  }
}

class RegistrationLoginStateBuilder
    implements Builder<RegistrationLoginState, RegistrationLoginStateBuilder> {
  _$RegistrationLoginState _$v;

  ConfirmCodeStatus _status;
  ConfirmCodeStatus get status => _$this._status;
  set status(ConfirmCodeStatus status) => _$this._status = status;

  RegistrationLoginStateBuilder();

  RegistrationLoginStateBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationLoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegistrationLoginState;
  }

  @override
  void update(void Function(RegistrationLoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationLoginState build() {
    final _$result = _$v ?? new _$RegistrationLoginState._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
