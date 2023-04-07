import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        height: MediaQuery.of(context).size.height /18,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search...",
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            contentPadding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            filled: true,
            fillColor: Colors.grey.shade100,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white,width: 4),
              borderRadius: BorderRadius.circular(100),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white,width: 4),
              borderRadius: BorderRadius.circular(100),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white,width: 4),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.5,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}