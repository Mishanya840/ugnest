// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScreenHomePageState> _$screenHomePageStateSerializer =
    new _$ScreenHomePageStateSerializer();

class _$ScreenHomePageStateSerializer
    implements StructuredSerializer<ScreenHomePageState> {
  @override
  final Iterable<Type> types = const [
    ScreenHomePageState,
    _$ScreenHomePageState
  ];
  @override
  final String wireName = 'ScreenHomePageState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScreenHomePageState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tab',
      serializers.serialize(object.tab,
          specifiedType: const FullType(ScreenTab)),
    ];

    return result;
  }

  @override
  ScreenHomePageState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScreenHomePageStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tab':
          result.tab = serializers.deserialize(value,
              specifiedType: const FullType(ScreenTab)) as ScreenTab;
          break;
      }
    }

    return result.build();
  }
}

class _$ScreenHomePageState extends ScreenHomePageState {
  @override
  final ScreenTab tab;

  factory _$ScreenHomePageState(
          [void Function(ScreenHomePageStateBuilder) updates]) =>
      (new ScreenHomePageStateBuilder()..update(updates)).build();

  _$ScreenHomePageState._({this.tab}) : super._() {
    if (tab == null) {
      throw new BuiltValueNullFieldError('ScreenHomePageState', 'tab');
    }
  }

  @override
  ScreenHomePageState rebuild(
          void Function(ScreenHomePageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScreenHomePageStateBuilder toBuilder() =>
      new ScreenHomePageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScreenHomePageState && tab == other.tab;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tab.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScreenHomePageState')..add('tab', tab))
        .toString();
  }
}

class ScreenHomePageStateBuilder
    implements Builder<ScreenHomePageState, ScreenHomePageStateBuilder> {
  _$ScreenHomePageState _$v;

  ScreenTab _tab;
  ScreenTab get tab => _$this._tab;
  set tab(ScreenTab tab) => _$this._tab = tab;

  ScreenHomePageStateBuilder();

  ScreenHomePageStateBuilder get _$this {
    if (_$v != null) {
      _tab = _$v.tab;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScreenHomePageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScreenHomePageState;
  }

  @override
  void update(void Function(ScreenHomePageStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScreenHomePageState build() {
    final _$result = _$v ?? new _$ScreenHomePageState._(tab: tab);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
