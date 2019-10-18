import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class UserNotificationBloc extends Bloc<UserNotificationEvent, UserNotificationState> {
  @override
  UserNotificationState get initialState => UserNotificationState(null);

  @override
  Stream<UserNotificationState> mapEventToState(
    UserNotificationEvent event,
  ) async* {
    if (event is HttpError) {
      yield* _handleHttpError(event);
    }
  }

  Stream<UserNotificationState> _handleHttpError(HttpError event) async* {
    var message;
    if (event.message == 'wrong password') {
      message = 'Неверный пароль';
    } else if (event.message == 'weak password') {
      message = 'Слишком простой пароль';
    } else if (event.message == 'login already taken') {
      message = 'Логин уже существует';
    } else {
      message = 'Ошибка: ${event.message}';
    }
    yield UserNotificationState(message);
  }
}
