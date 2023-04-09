import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grapmart01/Auth_Model/Login_model.dart';
import 'package:grapmart01/api_integration/login_api/login_api.dart';
import 'package:grapmart01/pages/account/Dashboard/Dashboard.dart';
import 'package:grapmart01/pages/account/Sign_Up.dart';
import 'package:grapmart01/widget/account/ReusableButton.dart';
import 'package:grapmart01/widget/account/custom_column.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<Account> {
  String? __message;
  final _formfield = GlobalKey<FormState>();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  bool passToggle = true;

  Login_model? login_model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          children: [
            CustomColumn(text: 'Sign In'),
            const SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    controller: _phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.grey.shade100, width: 3),
                      ),
                      hintText: "Phone number",
                      filled: true,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone Number is Required";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: TextFormField(
                    controller: _password,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.grey.shade100, width: 3),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is Required";
                      } else if (_password.text.length < 9) {
                        return "Password must be 8 characters or more";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            const SizedBox(height: 28),
            //sign button
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                onTap: () async {
                  login_model =
                      await MyService.mFetchUser(_phone.text, _password.text);
                  setState(() {});
                  if (_formfield.currentState!.validate() &&
                      login_model != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                    );
                  }
                },
                child: ReusableContainer(
                  text: 'Sign In',
                ),
              ),
            ),
            login_model == null
                ? CircularProgressIndicator()
                : Text("message is : ${login_model!.message}"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have no account?  ",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                GestureDetector(
                  child: const Text(
                    'Sing Up',
                    style:
                        TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => const SignUp())),
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                const Text(
                  "Forgot password? ",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: ((context) => const Reset())),
                    // );
                  },
                  child: const Text(
                    'Reset Now',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
