import 'package:blog_app/models/auth_res_model.dart';
import 'package:blog_app/services/auth_api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';

class AuthViewModel extends ChangeNotifier{
  // AuthViewModel(){
  //   login();
  // }

  AuthService _authService = AuthService();
  bool loading = false;
  bool error = false;
  bool success = false;

  AuthResponse auth;

  Future<void> login() async{
    loading = true;
    notifyListeners();
    try{
      final response = await _authService.login();
      auth = response;
      loading = false;
      notifyListeners();
    }catch(e){
      error = true;
      notifyListeners();
    }
  }
}

//Expose the provider
final authProvider = ChangeNotifierProvider<AuthViewModel>((ref){
return AuthViewModel();
});