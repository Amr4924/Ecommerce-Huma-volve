import 'package:ecommerce_app_huma_volve/core/Network/api_client.dart';
import 'package:ecommerce_app_huma_volve/core/constants/api_endpoints.dart';
import 'package:ecommerce_app_huma_volve/features/auth/sign_up/model/signup_res_model.dart';
import 'package:ecommerce_app_huma_volve/features/auth/sign_up/model/signup_req_model.dart';

class SignupServices {
  ApiClient apiClient;
  SignupServices(this.apiClient);
  Future<SignupModel> signup(SignUpReqModel signupReqModel) async {
    final response = await apiClient.dio.post(
      ApiEndpoints.signUpEndpoints,
      data: {
        "email": signupReqModel.email,
        "name": signupReqModel.fullName,
        "password": signupReqModel.password,
        "role": "customer",
        "avatar": "https://i.pinimg.com/736x/3c/40/8b/3c408b684e05ee2c6ffb53bf32d28482.jpg",
      },
    );

    final Map<String, dynamic> jsonData = response.data;
    final modelData = SignupModel.fromJson(jsonData);
    return modelData;
  }
}
