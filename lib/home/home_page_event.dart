import 'package:meta/meta.dart';

import 'home_page_state.dart';

@immutable
abstract class HomePageEvent {}

class ChangedScreenHomePageEvent extends HomePageEvent {
  final ScreenTab tab;

  ChangedScreenHomePageEvent(this.tab);
}
