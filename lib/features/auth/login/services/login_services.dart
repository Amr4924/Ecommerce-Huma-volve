import 'package:ecommerce_app_huma_volve/core/Network/api_client.dart';
import 'package:ecommerce_app_huma_volve/core/constants/api_endpoints.dart';
import 'package:ecommerce_app_huma_volve/features/auth/login/model/login_model.dart';

class LoginServices {
  ApiClient apiClint;
  LoginServices(this.apiClint);
  Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    final responce = await apiClint.dio.post(
      ApiEndpoints.loginEndpoints,
      data: {"email": email, "password": password},
    );
    final Map<String, dynamic> jsonData = responce.data;
    final modelData = LoginModel.fromJson(jsonData);

    
    return modelData;
  }
}
