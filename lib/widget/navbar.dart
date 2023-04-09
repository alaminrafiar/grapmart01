import 'package:flutter/material.dart';
import 'package:grapmart01/pages/account/register.dart';
import 'package:grapmart01/pages/home_pages/home_page.dart';
import 'package:grapmart01/widget/reusabledrawer.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  int currentTab = 0;
  final List<Widget> screens = [
    // const Cart(),
     const Account(),
    // const Printer(),
    const HomePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: ReusableDrawer(),
      extendBody: true,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.orange,
        backgroundColor: Colors.white,
        //elevation: 0,
        child: Image.asset(
          "asset/images/logo1.png",
          height: 38,
          width: 40,
        ),
        onPressed: () {
          setState(() {
            currentScreen = const HomePage();
            currentTab = 4;
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      if (scaffoldKey.currentState!.isDrawerOpen) {
                        scaffoldKey.currentState!.closeDrawer();
                        //close drawer, if drawer is open
                      } else {
                        scaffoldKey.currentState!.openDrawer();
                        //open drawer, if drawer is closed
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.format_list_bulleted_rounded,
                          color: currentTab == 0 ? Colors.grey : Colors.grey,
                        ),
                        Text('Category',
                            style: TextStyle(
                              color:
                              currentTab == 0 ? Colors.grey : Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Account();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: currentTab == 2 ? Colors.orange : Colors.grey,
                        ),
                        Text('Account',
                            style: TextStyle(
                              color:
                              currentTab == 2 ? Colors.orange : Colors.grey,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        // currentScreen = const Printer();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_printshop_outlined,
                          color: currentTab == 3 ? Colors.orange : Colors.grey,
                        ),
                        Text('Printer',
                            style: TextStyle(
                              color:
                              currentTab == 3 ? Colors.orange : Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        // currentScreen = const Cart();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Badge(
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: currentTab == 1 ? Colors.orange : Colors.grey,
                          ),
                        ),
                        Text('    Cart     ',
                            style: TextStyle(
                              color:
                              currentTab == 1 ? Colors.orange : Colors.grey,
                            )),
                      ],
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
