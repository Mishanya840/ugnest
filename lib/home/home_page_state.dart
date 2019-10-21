import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'home_page_state.g.dart';

@immutable
abstract class HomePageState {}

enum ScreenTab {
  search, createOffers, profile
}

abstract class ScreenHomePageState implements HomePageState, Built<ScreenHomePageState, ScreenHomePageStateBuilder> {
  ScreenTab get tab;

  ScreenHomePageState._();
  factory ScreenHomePageState([void Function(ScreenHomePageStateBuilder) updates]) = _$ScreenHomePageState;
  static Serializer<ScreenHomePageState> get serializer => _$screenHomePageStateSerializer;
}

