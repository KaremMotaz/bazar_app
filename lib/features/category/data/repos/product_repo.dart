import '../../../../core/services/api_endpoints.dart';
import '../../../../core/services/api_service.dart';
import '../models/product_model.dart';

class ProductRepo {
  final ApiService api;

  ProductRepo(this.api);

  /// Get All Products
  Future<List<ProductModel>> getProducts() async {
    final response = await api.get(ApiEndpoints.products);

    return (response.data as List)
        .map((e) => ProductModel.fromJson(e))
        .toList();
  }

  /// Get Product By ID
  Future<ProductModel> getProductById(int id) async {
    final response = await api.get('${ApiEndpoints.products}/$id');

    return ProductModel.fromJson(response.data);
  }

  /// Get Products By Category ID
  Future<List<ProductModel>> getProductsByCategory(int categoryId) async {
    final response = await api.get(
      ApiEndpoints.products,
      queryParameters: {'categoryId': categoryId},
    );

    return (response.data as List)
        .map((e) => ProductModel.fromJson(e))
        .toList();
  }
}
