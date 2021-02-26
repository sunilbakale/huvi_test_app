import 'package:flutter/material.dart';
import 'package:huvi_test_app/custom_widgets/custom_appbar.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Profile Settings', Icons.person_outlined,
          Icons.search_outlined),
      backgroundColor: HexColor("#f2f2f2"),
      body: Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
