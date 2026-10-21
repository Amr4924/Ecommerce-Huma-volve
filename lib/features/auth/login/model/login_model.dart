class LoginModel {
  String? accessTokens;
  String? refreshTokens;
  LoginModel({required this.accessTokens, required this.refreshTokens});

  LoginModel.fromJson(Map<String, dynamic> json) {
    accessTokens = json["access_token"];
    refreshTokens = json["refresh_token"];
  }
}
