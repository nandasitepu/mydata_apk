import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:dio/dio.dart';

class MyDataAuth {
  static GoogleAuth googleAuth = GoogleAuth();
  static ApiAuth apiAuth = ApiAuth();

  static const String registerUrl =
      'https://api.loginradius.com/identity/v2/auth/register';

  static const String loginUrl =
      'https://api.loginradius.com/identity/v2/auth/login';
}

class GoogleAuth {
  // Google Auth
  static final _googleSignIn = GoogleSignIn();
  // Google Login
  static Future<GoogleSignInAccount?> googlelogin() => _googleSignIn.signIn();
  //Google Logout
  static Future googleLogout() => _googleSignIn.disconnect();
}

class ApiAuth {
  // API Auth
  final Dio _dio = Dio();

  Future<Response> registerUser(Map<String, dynamic>? userData) async {
    try {
      Response response = await _dio.post(MyDataAuth.registerUrl, //ENDPONT URL
          data: userData, //REQUEST BODY
          queryParameters: {'apikey': 'YOUR_API_KEY'}, //QUERY PARAMETERS
          options: Options(headers: {
            'X-LoginRadius-Sott': 'YOUR_SOTT_KEY', //HEADERS
          }));
      //returns the successful json object
      return response.data;
    } on DioException catch (e) {
      //returns the error object if there is
      return e.response!.data;
    }
  }

  Future<Response> login(String email, String password) async {
    try {
      Response response = await _dio.post(
        MyDataAuth.loginUrl,
        data: {'email': email, 'password': password},
        queryParameters: {'apikey': 'YOUR_API_KEY'},
      );
      //returns the successful user data json object
      return response.data;
    } on DioException catch (e) {
      //returns the error object if any
      return e.response!.data;
    }
  }

  Future<Response> logout(String accessToken) async {
    try {
      Response response = await _dio.get(
        'https://api.loginradius.com/identity/v2/auth/access_token/InValidate',
        // queryParameters: {'apikey': ApiSecret.apiKey},
        options: Options(
          headers: {'Authorization': 'Bearer $accessToken'},
        ),
      );
      return response.data;
    } on DioException catch (e) {
      return e.response!.data;
    }
  }
}
