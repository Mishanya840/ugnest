import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:loggable/loggable.dart';

import 'home_page_event.dart';
import 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> with Loggable {

  @override
  HomePageState get initialState => ScreenHomePageState((b) => b..tab = ScreenTab.profile);

  @override
  Stream<HomePageState> mapEventToState(
    HomePageEvent event,
  ) async* {
    if (event is ChangedScreenHomePageEvent) {
      yield* _handleChangedScreenHomePageEvent(event);
    }
  }

  Stream<HomePageState> _handleChangedScreenHomePageEvent(ChangedScreenHomePageEvent event) async* {
    var state = this.state;
    if (state is ScreenHomePageState) {
      yield state.rebuild((b) => b..tab = event.tab);
    }
  }
}
