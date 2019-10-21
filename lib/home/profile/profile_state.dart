import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:ugnest_repositories/ugnest_repositories.dart';

part 'profile_state.g.dart';

@immutable
abstract class ProfileState {}

class InitialProfileState extends ProfileState {}

abstract class LoadedProfileState implements ProfileState, Built<LoadedProfileState, LoadedProfileStateBuilder> {
  BuiltList<Attribute> get attributes;

  LoadedProfileState._();
  factory LoadedProfileState([void Function(LoadedProfileStateBuilder) updates]) = _$LoadedProfileState;
  static Serializer<LoadedProfileState> get serializer => _$loadedProfileStateSerializer;
}

abstract class EditingProfileState implements ProfileState, Built<EditingProfileState, EditingProfileStateBuilder> {
  BuiltList<Attribute> get attributes;

  EditingProfileState._();
  factory EditingProfileState([void Function(EditingProfileStateBuilder) updates]) = _$EditingProfileState;
  static Serializer<EditingProfileState> get serializer => _$editingProfileStateSerializer;
}
