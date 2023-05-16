import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grapmart01/Auth_Model/auth.dart';
import 'package:grapmart01/api_integration/reset_api/api.dart';
import 'package:grapmart01/pages/account/Verification.dart';
import 'package:grapmart01/pages/account/register.dart';

import 'package:grapmart01/widget/navbar.dart';

import '../../widget/account/ReusableButton.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  TextEditingController _phone = TextEditingController();
  ResetAuth? resetAuth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, CupertinoPageRoute(builder: (context) => Home()));
              },
              child: Image.network(
                'https://grapmart.com/logo.png?imwidth=256',
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width / 2.2,
              ),
            ),
            Text(
              "",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "01XX-XXXX-XXX",
                    ),
                    controller: _phone,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),
            //sign button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                onPressed: () async {
                  resetAuth = await MyresetService.methodr(_phone.text);
                  setState(() {});
                  Navigator.pushReplacement(context,
                      CupertinoPageRoute(builder: (context) => Verificarion()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 14,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                // child: ReusableContainer(text: 'Reset'),
              ),
            ),

            //ata amniy deoya ase
            resetAuth == null
                ? CircularProgressIndicator()
                : Text("message is : ${resetAuth!.message}"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Back to",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Account())),
                    );
                  },
                  child: const Text(
                    'Sign in',
                    style:
                        TextStyle(color: Colors.deepOrangeAccent, fontSize: 16),
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
// TextButton(
// onPressed: () {
// Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=> Verificarion()));
// },
// child: ReusableContainer(text: 'Reset'),
// ),
