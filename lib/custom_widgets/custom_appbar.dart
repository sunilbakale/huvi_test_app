import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget buildAppBar(String title, IconData leadingIcon, IconData trailingIcon) {
  return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.black),
        onPressed: () {},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            // Icons.location_on_outlined
            onPressed: () {},
            icon: Icon(leadingIcon, color: Colors.black, size: 20),
          ),
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
          child: IconButton(
            icon: Icon(trailingIcon, color: Colors.black, size: 35),
            onPressed: () {},
          ),
        ),
      ],
      elevation: 0.0,
      backgroundColor: HexColor("#f2f2f2"));
}
