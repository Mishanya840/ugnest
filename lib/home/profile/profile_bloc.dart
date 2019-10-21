import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:loggable/loggable.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

import './bloc.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> with Loggable {
  final UsersRepository _usersRepository;

  ProfileBloc(this._usersRepository);

  @override
  ProfileState get initialState => InitialProfileState();

  @override
  Stream<ProfileState> mapEventToState(
      ProfileEvent event,
      ) async* {
    if (event is RequestUserInfo) {
      yield* _handleRequestUserInfo(event);
    } else if (event is UpdateUserAttribute) {
      yield* _handleUpdateUserAttribute(event);
    } else if (event is EditProfile) {
      yield* _handleEditProfile(event);
    } else if (event is SaveChangesProfile) {
      yield* _handleSaveChangesProfile(event);
    }
  }

  Stream<ProfileState> _handleEditProfile(EditProfile event) async* {
    var state = this.state;
    if (state is LoadedProfileState) {
      yield EditingProfileState((b) => b..attributes.addAll(state.attributes));
    }
  }
  Stream<ProfileState> _handleSaveChangesProfile(SaveChangesProfile event) async* {
    var state = this.state;
    if (state is EditingProfileState) {
      var result = await _usersRepository.save(state.attributes.toList());
      log.finest('save result $result');
      yield LoadedProfileState((b) => b..attributes = state.attributes.toBuilder());
    }
  }

  Stream<ProfileState> _handleRequestUserInfo(RequestUserInfo event) async* {
    var attributes = await _usersRepository.attributes();
    log.finest('attributes $attributes');
    if (state is !EditingProfileState) {
      yield LoadedProfileState((b) => b..attributes.addAll(attributes));
    }
  }

  Stream<ProfileState> _handleUpdateUserAttribute(UpdateUserAttribute event) async* {
    var state = this.state;
    if (state is EditingProfileState) {
      yield state.rebuild((b) => b
        ..attributes = (b.attributes..map((a) => a.id == event.attributeId ? (a..value = event.value) : a))
      );
    }
  }
}
