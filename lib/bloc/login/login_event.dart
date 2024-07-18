part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class LoginButtonPressed extends LoginState {
  final String email;
  final String password;
  const LoginButtonPressed(this.email, this.password);
}

final class LoginWithGoogleButtonPressed extends LoginState {
  const LoginWithGoogleButtonPressed();
  // todo : implement google login
}
