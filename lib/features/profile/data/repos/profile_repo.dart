import 'package:dio/dio.dart';

import '../../../../core/services/api_endpoints.dart';
import '../../../../core/services/api_service.dart';
import '../../../../core/services/cache_helper.dart';
import '../models/profile_model.dart';

class ProfileRepo {
  final ApiService api;

  ProfileRepo(this.api);

  /// Get Profile (Current User)
  Future<ProfileModel> getProfile() async {
    final accessToken = await CacheHelper.getSecureData(key: "accessToken");
    final response = await api.get(
      ApiEndpoints.profile,
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
    );

    return ProfileModel.fromJson(response.data);
  }

  /// Update Profile
  Future<ProfileModel> updateProfile(Map<String, dynamic> data) async {
    final response = await api.put(ApiEndpoints.profile, data: data);

    return ProfileModel.fromJson(response.data);
  }
}
