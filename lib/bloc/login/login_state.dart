part of 'login_bloc.dart';

@immutable
sealed class LoginState {
  const LoginState();
}

final class LoginInitial extends LoginState {
  const LoginInitial();
}

final class LoginLoading extends LoginState {
  const LoginLoading();
}

final class LoginSuccess extends LoginState {
  final String userId;
  const LoginSuccess(this.userId);
}

final class LoginFailure extends LoginState {
  final String error;
  const LoginFailure(this.error);
}