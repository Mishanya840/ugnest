// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoadedProfileState> _$loadedProfileStateSerializer =
    new _$LoadedProfileStateSerializer();
Serializer<EditingProfileState> _$editingProfileStateSerializer =
    new _$EditingProfileStateSerializer();

class _$LoadedProfileStateSerializer
    implements StructuredSerializer<LoadedProfileState> {
  @override
  final Iterable<Type> types = const [LoadedProfileState, _$LoadedProfileState];
  @override
  final String wireName = 'LoadedProfileState';

  @override
  Iterable<Object> serialize(Serializers serializers, LoadedProfileState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'attributes',
      serializers.serialize(object.attributes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Attribute)])),
    ];

    return result;
  }

  @override
  LoadedProfileState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoadedProfileStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attributes':
          result.attributes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Attribute)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$EditingProfileStateSerializer
    implements StructuredSerializer<EditingProfileState> {
  @override
  final Iterable<Type> types = const [
    EditingProfileState,
    _$EditingProfileState
  ];
  @override
  final String wireName = 'EditingProfileState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EditingProfileState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'attributes',
      serializers.serialize(object.attributes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Attribute)])),
    ];

    return result;
  }

  @override
  EditingProfileState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EditingProfileStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'attributes':
          result.attributes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Attribute)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$LoadedProfileState extends LoadedProfileState {
  @override
  final BuiltList<Attribute> attributes;

  factory _$LoadedProfileState(
          [void Function(LoadedProfileStateBuilder) updates]) =>
      (new LoadedProfileStateBuilder()..update(updates)).build();

  _$LoadedProfileState._({this.attributes}) : super._() {
    if (attributes == null) {
      throw new BuiltValueNullFieldError('LoadedProfileState', 'attributes');
    }
  }

  @override
  LoadedProfileState rebuild(
          void Function(LoadedProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadedProfileStateBuilder toBuilder() =>
      new LoadedProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadedProfileState && attributes == other.attributes;
  }

  @override
  int get hashCode {
    return $jf($jc(0, attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoadedProfileState')
          ..add('attributes', attributes))
        .toString();
  }
}

class LoadedProfileStateBuilder
    implements Builder<LoadedProfileState, LoadedProfileStateBuilder> {
  _$LoadedProfileState _$v;

  ListBuilder<Attribute> _attributes;
  ListBuilder<Attribute> get attributes =>
      _$this._attributes ??= new ListBuilder<Attribute>();
  set attributes(ListBuilder<Attribute> attributes) =>
      _$this._attributes = attributes;

  LoadedProfileStateBuilder();

  LoadedProfileStateBuilder get _$this {
    if (_$v != null) {
      _attributes = _$v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoadedProfileState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoadedProfileState;
  }

  @override
  void update(void Function(LoadedProfileStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoadedProfileState build() {
    _$LoadedProfileState _$result;
    try {
      _$result =
          _$v ?? new _$LoadedProfileState._(attributes: attributes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attributes';
        attributes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoadedProfileState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$EditingProfileState extends EditingProfileState {
  @override
  final BuiltList<Attribute> attributes;

  factory _$EditingProfileState(
          [void Function(EditingProfileStateBuilder) updates]) =>
      (new EditingProfileStateBuilder()..update(updates)).build();

  _$EditingProfileState._({this.attributes}) : super._() {
    if (attributes == null) {
      throw new BuiltValueNullFieldError('EditingProfileState', 'attributes');
    }
  }

  @override
  EditingProfileState rebuild(
          void Function(EditingProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditingProfileStateBuilder toBuilder() =>
      new EditingProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditingProfileState && attributes == other.attributes;
  }

  @override
  int get hashCode {
    return $jf($jc(0, attributes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditingProfileState')
          ..add('attributes', attributes))
        .toString();
  }
}

class EditingProfileStateBuilder
    implements Builder<EditingProfileState, EditingProfileStateBuilder> {
  _$EditingProfileState _$v;

  ListBuilder<Attribute> _attributes;
  ListBuilder<Attribute> get attributes =>
      _$this._attributes ??= new ListBuilder<Attribute>();
  set attributes(ListBuilder<Attribute> attributes) =>
      _$this._attributes = attributes;

  EditingProfileStateBuilder();

  EditingProfileStateBuilder get _$this {
    if (_$v != null) {
      _attributes = _$v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditingProfileState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EditingProfileState;
  }

  @override
  void update(void Function(EditingProfileStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditingProfileState build() {
    _$EditingProfileState _$result;
    try {
      _$result =
          _$v ?? new _$EditingProfileState._(attributes: attributes.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attributes';
        attributes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EditingProfileState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
