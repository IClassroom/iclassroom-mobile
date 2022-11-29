part of 'bloc.dart';

class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchData extends AuthEvent {}

class Login extends AuthEvent {
  final Function onSuccess;

  Login({required this.onSuccess});
}

class Logout extends AuthEvent {
  final Function onSuccess;

  Logout({required this.onSuccess});
}