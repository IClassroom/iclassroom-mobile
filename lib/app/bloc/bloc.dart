import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclassroom/api/models/api_exception.dart';
import 'package:iclassroom/api/repositories/auth_repository.dart';

part 'event.dart';
part 'state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;

  AuthBloc({required AuthRepository repository}) : _repository = repository, super(Loading()) {
    on<FetchData>(_fetchData);
    on<Login>(_login);
    on<Logout>(_logout);
  }

  Future<void> _fetchData(FetchData event, Emitter<AuthState> emit) async {
    try{
      emit(Loading());
      await _repository.getStatus();
      emit(Authenticated());
    } on ApiException catch (e) {
      emit(UnAuthenticated());
    }
  }

  FutureOr<void> _login(Login event, Emitter<AuthState> emit) async {
    emit(Loading());
    await _repository.doLogin();
    emit(Authenticated());
    event.onSuccess();
  }

  FutureOr<void> _logout(Logout event, Emitter<AuthState> emit) async {
    emit(Loading());
    await _repository.doLogout();
    emit(UnAuthenticated());
    event.onSuccess();
  }
}