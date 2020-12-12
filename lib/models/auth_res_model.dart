import 'dart:convert';

AuthResponse authResponseFromJson(String str) => AuthResponse.fromJson(json.decode(str));

String authResponseToJson(AuthResponse data) => json.encode(data.toJson());

class AuthResponse {
  AuthResponse({
    this.code,
    this.message,
    this.authToken
  });

  String code;
  String message;
  String authToken;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
    code: json["code"],
    message: json["message"],
      authToken: json["authToken"]
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
    "authToken": authToken
  };
}
