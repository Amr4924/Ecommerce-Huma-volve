import 'package:ecommerce_app_huma_volve/features/home/services/models/categories_model.dart';
import 'package:ecommerce_app_huma_volve/features/home/services/models/product_model.dart';

class HomeState {}

class HomeInitial extends HomeState {}

class CategoriesLodaing extends HomeState {}

class CategoriesSuccess extends HomeState {
  final List<CatogoreModel> categories;
  CategoriesSuccess(this.categories);
}

class CategoriesError extends HomeState {
  final String error;
  CategoriesError(this.error);
}


class ProductsLodaing extends HomeState {}

class ProductsSuccess extends HomeState {
  final List<ProductModel> product;
  ProductsSuccess(this.product);
}

class ProductsError extends HomeState {
  final String error;
  ProductsError(this.error);
}
