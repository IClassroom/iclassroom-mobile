part of 'bloc.dart';

class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Loading extends AuthState {}

class UnAuthenticated extends AuthState {}

class Authenticated extends AuthState {}