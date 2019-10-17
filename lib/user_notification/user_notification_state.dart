import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'user_notification_state.g.dart';

abstract class UserNotificationState implements Built<UserNotificationState, UserNotificationStateBuilder> {
  @nullable String get message;

  UserNotificationState._();
  factory UserNotificationState([void Function(UserNotificationStateBuilder) updates]) = _$UserNotificationState;
  static Serializer<UserNotificationState> get serializer => _$userNotificationStateSerializer;
}
