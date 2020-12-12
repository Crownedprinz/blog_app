import 'dart:convert';

LoginRequest LoginRequestFromJson(String str) => LoginRequest.fromJson(json.decode(str));

String LoginRequestToJson(LoginRequest data) => json.encode(data.toJson());
class LoginRequest{
  LoginRequest({
    this.email,
    this.password,
  });

  String email;
  String password;

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };
}