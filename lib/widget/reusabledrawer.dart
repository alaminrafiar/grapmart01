import 'package:flutter/material.dart';



class ReusableDrawer extends StatelessWidget {
  const ReusableDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Text(
              '   All Category',
              style: TextStyle(fontSize: 20),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Beauty And Personal care',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const Beauty())),
                  // );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Books & Stationery',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const Books())),
                  // );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Fashion & Lifestyle',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const Fashion())),
                  // );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Gadget & Electronics',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const Gadget())),
                  // );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Home & Gardening',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const Gardening())),
                  // );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Snacks',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const Snacks())),
                  // );
                },
                icon: const Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'GrapFood',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const GrapFood())),
                  // );
                },
                icon: const Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Everyday Needs',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const Needs())),
                  // );
                },
                icon: const Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Winter Collection',
                style: TextStyle(color: Colors.black54),
              ),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: ((context) => const Winter())),
                  // );
                },
                icon: const Icon(Icons.arrow_forward_ios, size: 20),
              ),
            ),
            const Divider(),
          ],
        )
    );
  }
}
