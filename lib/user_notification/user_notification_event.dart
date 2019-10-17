import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class UserNotificationEvent implements EquatableMixin {}

class HttpError implements UserNotificationEvent {
  final int code;
  final String message;

  HttpError(this.code, this.message);

  @override List<Object> get props => [code, message];
}
