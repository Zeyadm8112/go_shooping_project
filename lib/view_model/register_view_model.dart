import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:login_demo/model/services/token_service.dart';

// import '../model/model/token_model.dart';
import '../model/token_model.dart';

enum RegisterScreenState { intializing, loading, loaded, failed }

class RegisterViewModel extends ChangeNotifier {
  RegisterScreenState state = RegisterScreenState.intializing;
  setState(state) {
    this.state = state;
    notifyListeners();
  }

  String errorMessage = "";

  Future registerUser(String name, String number, String email,
      String password, String confirmPassword, BuildContext context) async {
    notifyListeners();

    Token result;
    // List<Token> tokenList = [];
    // var params = {'Rolename': 'User', 'TargetRole': 'User'};
    var formMap = {
      'Rolename':'Admin',
      'TargetRole':'User',
      'UserName': name,
      'PhoneNumber': number,
      'Email': email,
      'Password': password,
      'ConfirmPassword': confirmPassword
    };
    final dio = Dio();
    try {
      setState(RegisterScreenState.loading);
      final response = await dio.post(
          "http://www.ecommerce-icecode.somee.com/api/Account/Register",
          data: formMap,
          // queryParameters: params,
          options: Options(contentType: Headers.formUrlEncodedContentType));
      if (response.statusCode == 200) {
              setState(RegisterScreenState.loaded);

        Navigator.pushNamed(context, '/MainScreen');

        return true;
      }
    } on SocketException {
      errorMessage = "PLease check your connection";
      setState(RegisterScreenState.failed);
    } on FormatException {
      errorMessage = "Error happened try agian later";
      setState(RegisterScreenState.failed);
    } on TimeoutException {
      errorMessage = "Your internet connection is bad please try agian later";
      setState(RegisterScreenState.failed);
    } on DioError catch (e) {
      _handleDioErrors(e);
    }
  }

  _handleDioErrors(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        setState(RegisterScreenState.failed);
        errorMessage =
            "Your internet connection is bad please try agian later,408";
        break;
      case DioErrorType.sendTimeout:
        setState(RegisterScreenState.failed);
        errorMessage =
            "Your internet connection is bad please try agian later,2";
        break;
      case DioErrorType.receiveTimeout:
        setState(RegisterScreenState.failed);
        errorMessage =
            "Your internet connection is bad please try agian later,3";
        break;
      case DioErrorType.response:
        switch (error.response?.statusCode) {
          case 404:
            setState(RegisterScreenState.failed);
            errorMessage = "User not found, ";
            break;
          case 400:
            setState(RegisterScreenState.failed);
            errorMessage = "The password must have a capital and small letter and symbol";
            break;
          case 500:
            setState(RegisterScreenState.failed);
            errorMessage = "Something went wrong please try agian later, 500";
            break;
          case 408:
            setState(RegisterScreenState.failed);
            errorMessage =
                "Your internet connection is bad please try agian later,408";
            break;
        }

        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        setState(RegisterScreenState.failed);
        errorMessage = "No internet connection";

        break;
    }
  }
}
