import 'package:flutter/material.dart';

import 'screens/cart_screen.dart';
import 'screens/category_screen.dart';
import 'screens/profile_setting_screen.dart';

class TabPage extends StatefulWidget {
  @override
  TabPageState createState() => TabPageState();
}

class TabPageState extends State<TabPage> {
  @override
  void initState() {
    super.initState();
  }

  int selectIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  List<Widget> tabList = <Widget>[
    CategoryScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  var tabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outlined),
      label: '',
    ),
  ];

  Widget bottomNavigationBar() {
    return Stack(
      children: <Widget>[
        tabList.elementAt(selectIndex),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                elevation: 10,
                items: tabs,
                selectedItemColor: Colors.purple,
                showUnselectedLabels: true,
                currentIndex: selectIndex,
                onTap: onTabTapped,
              )),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: bottomNavigationBar());
  }
}
