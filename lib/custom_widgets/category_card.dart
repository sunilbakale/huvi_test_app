import 'package:flutter/material.dart';
import 'package:huvi_test_app/widget_models/card/category_card_model.dart';

class CategoryCard extends StatefulWidget {
  CategoryCardModel categoryCardModel;

  CategoryCard(this.categoryCardModel);

  @override
  CategoryCardState createState() => CategoryCardState(categoryCardModel);
}

class CategoryCardState extends State<CategoryCard> {
  CategoryCardModel categoryCardModel;

  CategoryCardState(this.categoryCardModel);

  Widget get cardImage {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 150,
          child: Stack(children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                    height: 180,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          categoryCardModel.imageUrl,
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ))),
            Positioned(
              top: 13,
              left: 12,
              child: Column(children: <Widget>[
                Text(categoryCardModel.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                    textAlign: TextAlign.center),
                Padding(
                    padding: EdgeInsets.only(right: 27, top: 5),
                    child: Text(categoryCardModel.subTitle,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.left)),
              ]),
            )
          ]),
        ),
      ),
    );
  }

  void initState() {
    super.initState();
    renderImage();
  }

  String imageUrl;

  void renderImage() async {
    setState(() {
      imageUrl = categoryCardModel.imageUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: cardImage,
    );
  }
}
