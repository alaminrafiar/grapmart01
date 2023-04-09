import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:grapmart01/Auth_Model/singin_model.dart';
import 'package:grapmart01/api_integration/Singin_api/singin_key.dart';
import 'package:grapmart01/api_integration/constants_url.dart';

import 'package:http/http.dart' as http;


class SinginAPi {
  static Future<Auth_model_SIngin?> mFetchUser(String name, String phone,String password) async {



    var response = await http
        .post(Uri.parse(MyUri.singInUrl), headers: <String, String>{
      'Content-Type': 'application/json',
      "api_key": '5267556B58703273357638792F423F45',
      // "Authorization":
      //     "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzZWM5MGYyYjc2NmFhY2FlZDliOTkxMiIsIm5hbWUiOiJBYmR1bGxhaCBBbCBNYW11biIsInJvbGUiOiJlbXBsb3llZSIsImlhdCI6MTY3ODEwNTA3OSwiZXhwIjoxNjc4MTkxNDc5fQ.5DKEzq8VAknk8BEFfDSSTASXuQvqHovLdooGFyUwB3g"

    }, body: jsonEncode({
      MyKeyWordsSingIn.name: name,
      MyKeyWordsSingIn.phone: phone,
      MyKeyWordsSingIn.password: password,
    }));

    if (response.statusCode==200){

      Auth_model_SIngin auth_model_sIngin = Auth_model_SIngin.fromJson(jsonDecode(response.body));



      return auth_model_sIngin;
    }else{
      print("curret");

    }
  }


}
