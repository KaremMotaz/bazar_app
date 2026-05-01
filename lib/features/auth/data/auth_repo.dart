import '../../../core/services/api_endpoints.dart';
import '../../../core/services/api_service.dart';
import 'models/login_response.dart';
import 'models/login_request.dart';
import 'models/register_request.dart';
import 'models/register_response.dart';

class AuthRepo {
  final ApiService api;

  AuthRepo(this.api);

  /// login
  Future<LoginResponse> login(LoginRequest request) async {
    final response = await api.post(ApiEndpoints.login, data: request.toJson());

    return LoginResponse.fromJson(response.data);
  }

  /// Register
  Future<RegisterResponse> register(RegisterRequest request) async {
    final response = await api.post(
      ApiEndpoints.register,
      data: request.toJson(),
    );

    return RegisterResponse.fromJson(response.data);
  }
}
