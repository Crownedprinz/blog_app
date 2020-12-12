import 'package:blog_app/models/auth_res_model.dart';
import 'package:blog_app/services/auth_api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';

class AuthViewModel extends ChangeNotifier{
  // AuthViewModel(){
  //   login();
  // }
  AuthViewModel({this.email,this.password,this.name});

  AuthService _authService = AuthService();
  bool loading = false;
  bool error = false;
  bool success = false;
  String name;
  String email;
  String password;
  AuthResponse auth;

  Future<void> login() async{
    loading = true;
    notifyListeners();
    try{
      _authService.email = email;
      _authService.password = password;
      final response = await _authService.login();
      auth = response;
      loading = false;
      success = true;
      error = false;
      notifyListeners();
    }catch(e){
      error = true;
      success = false;
      loading = false;
      notifyListeners();
    }
  }

  Future<void> signup() async{
    loading = true;
    notifyListeners();
    try{
      _authService.name = name;
      _authService.email = email;
      _authService.password = password;
      final response = await _authService.signup();
      auth = response;
      loading = false;
      success = true;
      error = false;
      notifyListeners();
    }catch(e){
      error = true;
      success = false;
      loading = false;
      notifyListeners();
    }
  }
}

//Expose the provider
final authProvider = ChangeNotifierProvider<AuthViewModel>((ref){
return AuthViewModel();
});