import 'dart:convert';

import 'package:grapmart01/Auth_Model/auth.dart';
import 'package:grapmart01/api_integration/reset_api/const.dart';
import 'package:grapmart01/api_integration/reset_api/key.dart';
import 'package:http/http.dart' as http;

class MyresetService {
  static Future<ResetAuth?> methodr(String phone) async {
    var response = await http.post(Uri.parse(Myconst.reset),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          Mykey.phone: phone,
        }));
    if (response.statusCode==200){
      ResetAuth resetAuth = ResetAuth.fromJson(jsonDecode(response.body));


      return resetAuth;
    }
    else{
      print("error");
    }
  }
}
