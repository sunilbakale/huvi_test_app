import 'package:flutter/material.dart';
import 'package:huvi_test_app/custom_widgets/custom_appbar.dart';
import 'package:hexcolor/hexcolor.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          "My Cart", Icons.shopping_cart_outlined, Icons.search_outlined),
      backgroundColor: HexColor("#f2f2f2"),
      body: Center(
        child: Text('My Cart'),
      ),
    );
  }
}