import 'package:ecommerce_app_huma_volve/core/Network/api_client.dart';
import 'package:ecommerce_app_huma_volve/core/constants/api_endpoints.dart';
import 'package:ecommerce_app_huma_volve/features/home/services/models/categories_model.dart';
import 'package:ecommerce_app_huma_volve/features/home/services/models/product_model.dart';

class HomeServices {
  final ApiClient apiClient;
  HomeServices(this.apiClient);
  Future<List<CatogoreModel>> getCategorie() async {
    final response = await apiClient.dio.get(ApiEndpoints.categoriesEndpoints);
    final List json = response.data;
    final List<CatogoreModel> categories = json
        .map((e) => CatogoreModel.fromJson(e))
        .toList();
    return categories;
  }

  Future<List<ProductModel>> getproducts(int? categorieId) async {
    final response = await apiClient.dio.get(
      "${ApiEndpoints.categoriesEndpoints}/$categorieId/${ApiEndpoints.productsEndpoints}",
    );
    final List jsonData = response.data;
    final List<ProductModel> products = jsonData
        .map((e) => ProductModel.fromJson(e))
        .toList();
    return products;
  }
}
