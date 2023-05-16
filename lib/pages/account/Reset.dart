import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grapmart01/pages/account/Verification.dart';
import 'package:grapmart01/pages/account/register.dart';
import 'package:grapmart01/widget/account/custom_column.dart';
import 'package:grapmart01/widget/account/reusable_textfield.dart';

import '../../widget/account/ReusableButton.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            CustomColumn(text: 'Reset Password'),
            const SizedBox(height: 30),
            ReusableTextField(
              hintText: '01XX-XXXX-XXX', text: 'Phone Number', controller: "",),
            const SizedBox(height: 25),
            //sign button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=> Verificarion()));
                },
                child: ReusableContainer(text: 'Reset'),
              ),
            ),
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
