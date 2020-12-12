import 'package:blog_app/models/auth_res_model.dart';
import 'package:blog_app/services/auth_api_service.dart';

class AuthRepository{
  AuthService _authService = AuthService();

  Future<AuthResponse> login() async {
    final response = _authService.login();
    return response;
  }

  Future<AuthResponse> signup() async {
    final response = _authService.signup();
    return response;
  }
}