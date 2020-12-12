import 'package:blog_app/models/auth_res_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AuthService {
  Dio _dio;
  String email;
  String password;
  String name;
  AuthService() {
    BaseOptions options = new BaseOptions(
        receiveTimeout: 100000,
        connectTimeout: 100000,
        baseUrl: "https://x8ki-letl-twmt.n7.xano.io/api:_yoLxu1D");
    _dio = Dio(options);
    //Log Api Request and Responses
    _dio.interceptors.add(PrettyDioLogger());
    email = this.email;
    password = this.password;
    name = this.name;
  }
  Future<AuthResponse> login() async {
    final url = '/auth/login';
    try {
      print({"email": email, "password": password});
      final response =
          await _dio.post(url, data: {"email": email, "password": password});
      AuthResponse result = AuthResponse.fromJson(response.data);
      return result;
    } on DioError catch (e) {
      print(e.error);
      throw e.error;
    }
  }

  Future<AuthResponse> signup() async {
    final url = '/auth/signup';
    try {
      print({"name": name, "email": email, "password": password});
      final response = await _dio.post(url,
          data: {"name": name, "email": email, "password": password});
      AuthResponse result = AuthResponse.fromJson(response.data);
      return result;
    } on DioError catch (e) {
      print(e.error);
      throw e.error;
    }
  }
}
