import '../../../../core/services/api_endpoints.dart';
import '../../../../core/services/api_service.dart';
import '../models/category_model.dart';

class CategoryRepo {
  final ApiService api;

  CategoryRepo(this.api);

  /// Get All Categories
  Future<List<CategoryModel>> getCategories() async {
    final response = await api.get(ApiEndpoints.categories);

    return (response.data as List)
        .map((e) => CategoryModel.fromJson(e))
        .toList();
  }
}
