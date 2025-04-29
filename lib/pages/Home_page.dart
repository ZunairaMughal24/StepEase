import 'package:e_commerec/components/navigationbar.dart';
import 'package:e_commerec/pages/cart_page.dart';
import 'package:e_commerec/pages/shop_page.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const MyShopPage(),
    const MyCartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: MyBotNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
        child: Column(children: [
          DrawerHeader(child: Image.asset("assets/images/nike5.jpg")),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              color: Colors.grey[800],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 260),
            child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Log out",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
