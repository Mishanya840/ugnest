import 'package:meta/meta.dart';

@immutable
abstract class ProfileEvent {}

class RequestUserInfo extends ProfileEvent {}
class UpdateUserAttribute extends ProfileEvent {
  final int attributeId;
  final dynamic value;

  UpdateUserAttribute(this.attributeId, this.value);
}
class EditProfile extends ProfileEvent {}
class SaveChangesProfile extends ProfileEvent {}
