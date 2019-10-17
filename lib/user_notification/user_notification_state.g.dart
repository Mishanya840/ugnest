// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserNotificationState> _$userNotificationStateSerializer =
    new _$UserNotificationStateSerializer();

class _$UserNotificationStateSerializer
    implements StructuredSerializer<UserNotificationState> {
  @override
  final Iterable<Type> types = const [
    UserNotificationState,
    _$UserNotificationState
  ];
  @override
  final String wireName = 'UserNotificationState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, UserNotificationState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserNotificationState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserNotificationStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserNotificationState extends UserNotificationState {
  @override
  final String message;

  factory _$UserNotificationState(
          [void Function(UserNotificationStateBuilder) updates]) =>
      (new UserNotificationStateBuilder()..update(updates)).build();

  _$UserNotificationState._({this.message}) : super._();

  @override
  UserNotificationState rebuild(
          void Function(UserNotificationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserNotificationStateBuilder toBuilder() =>
      new UserNotificationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserNotificationState && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserNotificationState')
          ..add('message', message))
        .toString();
  }
}

class UserNotificationStateBuilder
    implements Builder<UserNotificationState, UserNotificationStateBuilder> {
  _$UserNotificationState _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  UserNotificationStateBuilder();

  UserNotificationStateBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserNotificationState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserNotificationState;
  }

  @override
  void update(void Function(UserNotificationStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserNotificationState build() {
    final _$result = _$v ?? new _$UserNotificationState._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
