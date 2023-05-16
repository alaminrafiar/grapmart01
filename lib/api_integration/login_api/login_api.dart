import 'dart:convert';

import 'package:grapmart01/Auth_Model/Login_model.dart';

import 'package:grapmart01/api_integration/constants_url.dart';
import 'package:grapmart01/api_integration/login_key/login_key.dart';
import 'package:http/http.dart' as http;


class MyService {
  static Future<Login_model?> mFetchUser(String phone, String password) async {



    var response = await http
        .post(Uri.parse(MyUri.logInUrl), headers: <String, String>{
      'Content-Type': 'application/json',

      // "Authorization":
      //     "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzZWM5MGYyYjc2NmFhY2FlZDliOTkxMiIsIm5hbWUiOiJBYmR1bGxhaCBBbCBNYW11biIsInJvbGUiOiJlbXBsb3llZSIsImlhdCI6MTY3ODEwNTA3OSwiZXhwIjoxNjc4MTkxNDc5fQ.5DKEzq8VAknk8BEFfDSSTASXuQvqHovLdooGFyUwB3g"

    }, body: jsonEncode({
      MyKeyLogin.phone: phone,
      MyKeyLogin.password: password,
    }));

    if (response.statusCode==200){

      Login_model login_model = Login_model.fromJson(jsonDecode(response.body));

      return login_model;
    }else{
      print("error");

    }
  }

  static methodReset(String text) {}
}
