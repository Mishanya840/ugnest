// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WelcomeLoginState> _$welcomeLoginStateSerializer =
    new _$WelcomeLoginStateSerializer();
Serializer<PhoneNumberFormLoginState> _$phoneNumberFormLoginStateSerializer =
    new _$PhoneNumberFormLoginStateSerializer();
Serializer<LoginUserLoginState> _$loginUserLoginStateSerializer =
    new _$LoginUserLoginStateSerializer();
Serializer<RestorePasswordLoginState> _$restorePasswordLoginStateSerializer =
    new _$RestorePasswordLoginStateSerializer();
Serializer<ConfirmRegistrationLoginState>
    _$confirmRegistrationLoginStateSerializer =
    new _$ConfirmRegistrationLoginStateSerializer();

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

class _$PhoneNumberFormLoginStateSerializer
    implements StructuredSerializer<PhoneNumberFormLoginState> {
  @override
  final Iterable<Type> types = const [
    PhoneNumberFormLoginState,
    _$PhoneNumberFormLoginState
  ];
  @override
  final String wireName = 'PhoneNumberFormLoginState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PhoneNumberFormLoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'phoneIsFill',
      serializers.serialize(object.phoneIsFill,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  PhoneNumberFormLoginState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhoneNumberFormLoginStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneIsFill':
          result.phoneIsFill = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
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
    final result = <Object>[
      'wrongPassword',
      serializers.serialize(object.wrongPassword,
          specifiedType: const FullType(bool)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];
    if (object.userName != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(object.userName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginUserLoginState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginUserLoginStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wrongPassword':
          result.wrongPassword = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
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
    final result = <Object>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(ConfirmRegistrationStatus)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];

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
                  specifiedType: const FullType(ConfirmRegistrationStatus))
              as ConfirmRegistrationStatus;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ConfirmRegistrationLoginStateSerializer
    implements StructuredSerializer<ConfirmRegistrationLoginState> {
  @override
  final Iterable<Type> types = const [
    ConfirmRegistrationLoginState,
    _$ConfirmRegistrationLoginState
  ];
  @override
  final String wireName = 'ConfirmRegistrationLoginState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ConfirmRegistrationLoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(ConfirmRegistrationStatus)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ConfirmRegistrationLoginState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfirmRegistrationLoginStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(ConfirmRegistrationStatus))
              as ConfirmRegistrationStatus;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$PhoneNumberFormLoginState extends PhoneNumberFormLoginState {
  @override
  final String phone;
  @override
  final bool phoneIsFill;

  factory _$PhoneNumberFormLoginState(
          [void Function(PhoneNumberFormLoginStateBuilder) updates]) =>
      (new PhoneNumberFormLoginStateBuilder()..update(updates)).build();

  _$PhoneNumberFormLoginState._({this.phone, this.phoneIsFill}) : super._() {
    if (phone == null) {
      throw new BuiltValueNullFieldError('PhoneNumberFormLoginState', 'phone');
    }
    if (phoneIsFill == null) {
      throw new BuiltValueNullFieldError(
          'PhoneNumberFormLoginState', 'phoneIsFill');
    }
  }

  @override
  PhoneNumberFormLoginState rebuild(
          void Function(PhoneNumberFormLoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhoneNumberFormLoginStateBuilder toBuilder() =>
      new PhoneNumberFormLoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhoneNumberFormLoginState &&
        phone == other.phone &&
        phoneIsFill == other.phoneIsFill;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, phone.hashCode), phoneIsFill.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PhoneNumberFormLoginState')
          ..add('phone', phone)
          ..add('phoneIsFill', phoneIsFill))
        .toString();
  }
}

class PhoneNumberFormLoginStateBuilder
    implements
        Builder<PhoneNumberFormLoginState, PhoneNumberFormLoginStateBuilder> {
  _$PhoneNumberFormLoginState _$v;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  bool _phoneIsFill;
  bool get phoneIsFill => _$this._phoneIsFill;
  set phoneIsFill(bool phoneIsFill) => _$this._phoneIsFill = phoneIsFill;

  PhoneNumberFormLoginStateBuilder();

  PhoneNumberFormLoginStateBuilder get _$this {
    if (_$v != null) {
      _phone = _$v.phone;
      _phoneIsFill = _$v.phoneIsFill;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhoneNumberFormLoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PhoneNumberFormLoginState;
  }

  @override
  void update(void Function(PhoneNumberFormLoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PhoneNumberFormLoginState build() {
    final _$result = _$v ??
        new _$PhoneNumberFormLoginState._(
            phone: phone, phoneIsFill: phoneIsFill);
    replace(_$result);
    return _$result;
  }
}

class _$LoginUserLoginState extends LoginUserLoginState {
  @override
  final String userName;
  @override
  final bool wrongPassword;
  @override
  final String phone;

  factory _$LoginUserLoginState(
          [void Function(LoginUserLoginStateBuilder) updates]) =>
      (new LoginUserLoginStateBuilder()..update(updates)).build();

  _$LoginUserLoginState._({this.userName, this.wrongPassword, this.phone})
      : super._() {
    if (wrongPassword == null) {
      throw new BuiltValueNullFieldError(
          'LoginUserLoginState', 'wrongPassword');
    }
    if (phone == null) {
      throw new BuiltValueNullFieldError('LoginUserLoginState', 'phone');
    }
  }

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
    return other is LoginUserLoginState &&
        userName == other.userName &&
        wrongPassword == other.wrongPassword &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, userName.hashCode), wrongPassword.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginUserLoginState')
          ..add('userName', userName)
          ..add('wrongPassword', wrongPassword)
          ..add('phone', phone))
        .toString();
  }
}

class LoginUserLoginStateBuilder
    implements Builder<LoginUserLoginState, LoginUserLoginStateBuilder> {
  _$LoginUserLoginState _$v;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  bool _wrongPassword;
  bool get wrongPassword => _$this._wrongPassword;
  set wrongPassword(bool wrongPassword) =>
      _$this._wrongPassword = wrongPassword;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  LoginUserLoginStateBuilder();

  LoginUserLoginStateBuilder get _$this {
    if (_$v != null) {
      _userName = _$v.userName;
      _wrongPassword = _$v.wrongPassword;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ??
        new _$LoginUserLoginState._(
            userName: userName, wrongPassword: wrongPassword, phone: phone);
    replace(_$result);
    return _$result;
  }
}

class _$RestorePasswordLoginState extends RestorePasswordLoginState {
  @override
  final ConfirmRegistrationStatus status;
  @override
  final String phone;

  factory _$RestorePasswordLoginState(
          [void Function(RestorePasswordLoginStateBuilder) updates]) =>
      (new RestorePasswordLoginStateBuilder()..update(updates)).build();

  _$RestorePasswordLoginState._({this.status, this.phone}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError('RestorePasswordLoginState', 'status');
    }
    if (phone == null) {
      throw new BuiltValueNullFieldError('RestorePasswordLoginState', 'phone');
    }
  }

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
    return other is RestorePasswordLoginState &&
        status == other.status &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestorePasswordLoginState')
          ..add('status', status)
          ..add('phone', phone))
        .toString();
  }
}

class RestorePasswordLoginStateBuilder
    implements
        Builder<RestorePasswordLoginState, RestorePasswordLoginStateBuilder> {
  _$RestorePasswordLoginState _$v;

  ConfirmRegistrationStatus _status;
  ConfirmRegistrationStatus get status => _$this._status;
  set status(ConfirmRegistrationStatus status) => _$this._status = status;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  RestorePasswordLoginStateBuilder();

  RestorePasswordLoginStateBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _phone = _$v.phone;
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
    final _$result =
        _$v ?? new _$RestorePasswordLoginState._(status: status, phone: phone);
    replace(_$result);
    return _$result;
  }
}

class _$ConfirmRegistrationLoginState extends ConfirmRegistrationLoginState {
  @override
  final ConfirmRegistrationStatus status;
  @override
  final String phone;

  factory _$ConfirmRegistrationLoginState(
          [void Function(ConfirmRegistrationLoginStateBuilder) updates]) =>
      (new ConfirmRegistrationLoginStateBuilder()..update(updates)).build();

  _$ConfirmRegistrationLoginState._({this.status, this.phone}) : super._() {
    if (status == null) {
      throw new BuiltValueNullFieldError(
          'ConfirmRegistrationLoginState', 'status');
    }
    if (phone == null) {
      throw new BuiltValueNullFieldError(
          'ConfirmRegistrationLoginState', 'phone');
    }
  }

  @override
  ConfirmRegistrationLoginState rebuild(
          void Function(ConfirmRegistrationLoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmRegistrationLoginStateBuilder toBuilder() =>
      new ConfirmRegistrationLoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmRegistrationLoginState &&
        status == other.status &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConfirmRegistrationLoginState')
          ..add('status', status)
          ..add('phone', phone))
        .toString();
  }
}

class ConfirmRegistrationLoginStateBuilder
    implements
        Builder<ConfirmRegistrationLoginState,
            ConfirmRegistrationLoginStateBuilder> {
  _$ConfirmRegistrationLoginState _$v;

  ConfirmRegistrationStatus _status;
  ConfirmRegistrationStatus get status => _$this._status;
  set status(ConfirmRegistrationStatus status) => _$this._status = status;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  ConfirmRegistrationLoginStateBuilder();

  ConfirmRegistrationLoginStateBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmRegistrationLoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConfirmRegistrationLoginState;
  }

  @override
  void update(void Function(ConfirmRegistrationLoginStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfirmRegistrationLoginState build() {
    final _$result = _$v ??
        new _$ConfirmRegistrationLoginState._(status: status, phone: phone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
