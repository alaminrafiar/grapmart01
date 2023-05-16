import 'package:flutter/material.dart';
import 'package:grapmart01/pages/account/register.dart';
import 'package:grapmart01/widget/account/ReusableButton.dart';
import 'package:grapmart01/widget/account/custom_column.dart';

class Verificarion extends StatefulWidget {
  const Verificarion({Key? key}) : super(key: key);

  @override
  State<Verificarion> createState() => _VerificarionState();
}

class _VerificarionState extends State<Verificarion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              CustomColumn(text: 'OTP Verification'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'We have sent a code to your phone 01XX-XXXX-XXX',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Material(
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: '',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    //padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: '',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: '',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Account())),
                    );
                  },
                  child: ReusableContainer(
                    text: 'Verify Account',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  const Text(
                    "Didn't recieve code?",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Verificarion())),
                      );
                    },
                    child: const Text(
                      'Resend',
                      style: TextStyle(
                          color: Colors.deepOrangeAccent, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
