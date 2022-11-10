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
  }

  Future<void> _fetchData(FetchData event, Emitter<AuthState> emit) async {
    try{
      await _repository.getStatus();
      emit(Authenticated());
    } on ApiException catch (e) {
      emit(UnAuthenticated());
    }
  }
}