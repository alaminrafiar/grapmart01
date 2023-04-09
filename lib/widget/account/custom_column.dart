import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final String text;

  CustomColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25,),
        Image.network(
          'https://grapmart.com/logo.png?imwidth=256',
          height: MediaQuery.of(context).size.height / 8,
          width: MediaQuery.of(context).size.width / 2.2,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
