import 'package:flutter/material.dart';


import 'dialogbox.dart';

class ReusableRow extends StatelessWidget {
  final String photo;
  final String photo1;
  final String title;
  final String title1;
  final String subtitle;
  final String subtitle1;


  ReusableRow({Key? key,required this.photo, required this.title, required this.title1, required this.subtitle, required this.subtitle1, required this.photo1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: ((context) => const Twing())),
            // );
          },
          child: Container(
            height: MediaQuery.of(context).size.height /3.2,
            width: MediaQuery.of(context).size.width /2.3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.5,
                      blurRadius: 4,
                      offset: const Offset(0, 5))
                ]),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network( photo,
                      height: MediaQuery.of(context).size.height /4.5,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(left: 8, top: 10, right: 8),
                      child: Text(title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        subtitle,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return ReusableDialog();
                });
          },
          child: Container(
            height: MediaQuery.of(context).size.height /3.2,
            width: MediaQuery.of(context).size.width /2.3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.5,
                      blurRadius: 4,
                      offset: const Offset(0, 5))
                ]),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      photo1,
                      height: MediaQuery.of(context).size.height /4.5,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(left: 8, top: 10, right: 8),
                      child: Text(title1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        subtitle1,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
