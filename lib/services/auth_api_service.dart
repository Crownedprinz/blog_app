import 'package:blog_app/models/auth_res_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AuthService {
  Dio _dio;

  AuthService() {
    BaseOptions options = new BaseOptions(
        receiveTimeout: 100000,
        connectTimeout: 100000,
        baseUrl: "https://x8ki-letl-twmt.n7.xano.io/api:_yoLxu1D");
    _dio = Dio(options);
    //Log Api Request and Responses
    _dio.interceptors.add(PrettyDioLogger());

  }
    Future<AuthResponse> login() async {
      final url = '/auth/login';
      try {
        final response = await _dio.post(url);
        AuthResponse result = AuthResponse.fromJson(response.data);
        return result;
      } on DioError catch (e) {
        print(e.error);
        throw e.error;
    }
  }
}
