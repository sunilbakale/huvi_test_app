import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:huvi_test_app/api_services/category_api_services.dart';
import 'package:huvi_test_app/custom_widgets/category_product_card.dart';
import 'package:huvi_test_app/custom_widgets/custom_appbar.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProductScreenState();
}

class ProductScreenState extends State<StatefulWidget> {
  @override
  void initState() {
    super.initState();
    getSubCategories();
    getProducts();
  }

  Widget get showSubCategories {
    return FutureBuilder(
        future: getSubCategories(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            var subCategory = snapshot.data;
            return ListView.builder(
                shrinkWrap: true,
                itemCount: subCategory.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            subCategory[index]["sub_category_name"],
                            style: TextStyle(fontSize: 18),
                          )),
                      CategoryProductCard(
                          'https://source.unsplash.com/collection/' + "$index"),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(2, 5, 2, 2),
                          child: Text(
                            subCategory[index]["sub_category_name"],
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
                });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar("Products", null, Icons.search_outlined),
        backgroundColor: HexColor("#f2f2f2"),
        body: showSubCategories);
  }
}
