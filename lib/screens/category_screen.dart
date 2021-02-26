import 'package:flutter/material.dart';
import 'package:huvi_test_app/api_services/category_api_services.dart';
import 'package:huvi_test_app/custom_widgets/category_card.dart';
import 'package:huvi_test_app/custom_widgets/category_product_card.dart';
import 'package:huvi_test_app/custom_widgets/custom_appbar.dart';
import 'package:huvi_test_app/dart_models/category_response.dart';
import 'package:huvi_test_app/widget_models/card/category_card_model.dart';
import 'package:hexcolor/hexcolor.dart';

import 'product_screen.dart';

class CategoryScreen extends StatefulWidget {
  @override
  CategoryScreenState createState() => CategoryScreenState();
}

class CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
    getCategories();
  }

  Widget get listOfCategories {
    return FutureBuilder<CategoryResponse>(
      future: getCategories(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(2),
            itemCount: snapshot.data.data.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 0),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductScreen()),
                      );
                    },
                    child: CategoryProductCard(
                        //snapshot.data.data[index]["banner"] -> we can use, if correct image-url is stored in DB
                        'https://source.unsplash.com/collection/' + "$index"),
                  ),
                  // for now, getting random images for test
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(2, 5, 2, 2),
                      child: Text(
                        snapshot.data.data[index]["category_name"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget get buildCategoryScreen {
    return Column(
      children: <Widget>[
        CategoryCard(
          new CategoryCardModel(
              'Freshfood from Farm',
              'Easy to pick your food',
              'description',
              'https://images.pexels.com/photos/580276/pexels-photo-580276.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 12),
            child: Text(
              "Category",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Colors.black),
            ),
          ),
        ),
        listOfCategories,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar('London SE11 4HJ, UK', Icons.location_on_outlined,
            Icons.search_outlined),
        body: SingleChildScrollView(child: buildCategoryScreen),
        backgroundColor: HexColor("#f2f2f2"));
  }
}
