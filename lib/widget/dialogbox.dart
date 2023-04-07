import 'package:flutter/material.dart';

class ReusableDialog extends StatelessWidget {
  const ReusableDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(

      shape: const RoundedRectangleBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(10))),
      insetPadding: const EdgeInsets.all(20),
      elevation: 0,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            Image.network(
              'https://inv.grapfood.com/uploads/img/1671691361_Chocolate%20Cream%20Wafer%20Biscuit.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Twing 500ml',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('SKU : 1.0000'),
            const Text('Price : 30.00 tk'),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Specification',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Brand',
                      style: TextStyle(
                          color: Colors.black54),
                    ),
                    Text('Weight',
                        style: TextStyle(
                            color: Colors.black54)),
                    Text('Flavour',
                        style: TextStyle(
                            color: Colors.black54)),
                    Text('Subcategory',
                        style: TextStyle(
                            color: Colors.black54)),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Description',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Akij Food',
                      style: TextStyle(
                          color: Colors.black54),
                    ),
                    Text(
                      '500ml',
                      style: TextStyle(
                          color: Colors.black54),
                    ),
                    Text(
                      'Carbonated',
                      style: TextStyle(
                          color: Colors.black54),
                    ),
                    Text(
                      'Drinks',
                      style: TextStyle(
                          color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Material(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius:
                    BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.white,
                          //fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
