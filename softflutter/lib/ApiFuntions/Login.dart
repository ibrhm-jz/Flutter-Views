import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:softflutter/showDialogSingleButton.dart';
import 'dart:convert';
import 'package:softflutter/model/LoginModel.dart';
import 'package:softflutter/ScreenOne.dart';

Future<LoginModel> requestLoginAPI(BuildContext context, String email, String password) async {
  final url = "https://f400a337d7bf.ngrok.io/api/v1/login/";


  Map<String, String> body = {
    'username': email,
    'password': password,
  };

  final response = await http.post(
    url,
    body: body,
  );

  if (response.statusCode == 200) {
    final responseJson = json.decode(response.body);
    print(responseJson);
    var user = new LoginModel.fromJson(responseJson);
   // Navigator.of(context).pushReplacementNamed('/ScreenOne');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnePage() ));
    //showDialogSingleButton(context, "iniciar sesión", "Correcto", "OK");
    return LoginModel.fromJson(responseJson);
  }
  else {
    final responseJson = json.decode(response.body);
    showDialogSingleButton(context, "No se puede iniciar sesión", "Correo ó Contraseña incorrecta", "OK");
    return null;
  }
}