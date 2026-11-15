import 'package:ecommerce_app_huma_volve/features/home/cubit/home_states.dart';
import 'package:ecommerce_app_huma_volve/features/home/services/home_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeServices homeServices;
  HomeCubit(this.homeServices) : super(HomeInitial());

  void loadHomeData(int categorieId) async {
    emit(CategoriesLodaing());
    try {
      final categories = await homeServices.getCategorie();
      emit(CategoriesSuccess(categories));
      final products = await homeServices.getproducts(
        categories[categorieId].id,
      );
      emit(ProductsSuccess(products));
    } catch (e) {
      emit(CategoriesError(e.toString()));
    }
  }
}
