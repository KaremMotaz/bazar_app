import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/auth_repo.dart';
import '../../../data/models/register_request.dart';
import '../../../data/models/register_response.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepo repo;

  RegisterCubit(this.repo) : super(RegisterInitial());

  /// REGISTER
  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(RegisterLoading());

    try {
      final response = await repo.register(
        RegisterRequest(
          name: name,
          email: email,
          password: password,
          avatar: 'https://picsum.photos/800',
        ),
      );

      emit(RegisterSuccess(response));
    } catch (e) {
      emit(RegisterError(e.toString()));
    }
  }
}
