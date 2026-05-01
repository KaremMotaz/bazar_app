import 'package:bazar_app/core/services/cache_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/auth_repo.dart';
import '../../../data/models/login_request.dart';
import '../../../data/models/login_response.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo repo;

  LoginCubit(this.repo) : super(LoginInitial());

  /// LOGIN
  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());

    try {
      final response = await repo.login(
        LoginRequest(email: email, password: password),
      );
      CacheHelper.setSecureData(
        key: 'accessToken',
        value: response.accessToken,
      );
      CacheHelper.setSecureData(
        key: 'refreshToken',
        value: response.refreshToken,
      );
      emit(LoginSuccess(response));
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }
}
