import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grapmart01/Auth_Model/singin_model.dart';
import 'package:grapmart01/api_integration/Singin_api/SinIn_api.dart';
import 'package:grapmart01/pages/account/Verification.dart';
import 'package:grapmart01/pages/account/register.dart';
import 'package:grapmart01/widget/account/ReusableButton.dart';
import 'package:grapmart01/widget/account/custom_column.dart';
import 'package:grapmart01/widget/account/reusable_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formfield = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _password = TextEditingController();
  Auth_model_SIngin? auth_model_sIngin;
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              CustomColumn(text: 'Sign Up'),
              const SizedBox(height: 35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Name",
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.grey.shade100, width: 3),
                        ),
                        hintText: "Your name",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name please";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Phone number",
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: TextField(
                      controller: _phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.grey.shade100, width: 3),
                        ),
                        hintText: "01XX-XXXX-XXX",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Password",
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      controller: _password,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.grey.shade100, width: 3),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            Fluttertoast.showToast(
                                msg: "Password in inccect",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.TOP,
                                timeInSecForIosWeb: 1,
                                textColor: Colors.white,
                                fontSize: 16.0);
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        hintText: "Enter password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is Required";
                        } else if (_password.text.length < 6) {
                          return "Password must be 6 characters or more";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              //sign button
              Material(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: InkWell(
                    onTap: () async {
                      Fluttertoast.showToast(
                          msg: "The phone has already been taken.",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          timeInSecForIosWeb: 3,
                          textColor: Colors.white,
                          fontSize: 16.0

                          //aita just bojar jonno use kora hoise
                          );
                      auth_model_sIngin = await SinginAPi.mFetchUser(
                          _name.text, _phone.text, _password.text);
                      setState(() {});
                      if (_formfield.currentState!.validate() &&
                          auth_model_sIngin != null) {}
                      SizedBox(
                        height: 10,
                      );
                      auth_model_sIngin == null
                          ? CircularProgressIndicator()
                          : Text("message is: ${auth_model_sIngin!.message}");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Verificarion())),
                      );
                    },
                    child: ReusableContainer(
                      text: 'Sign Up',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  const Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Account())),
                      );
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.deepOrangeAccent, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
