import 'package:flutter/material.dart';

class CategoryProductCard extends StatefulWidget {
  final String icon;

  const CategoryProductCard(this.icon, {Key key}) : super(key: key);

  @override
  CategoryProductCardState createState() => CategoryProductCardState();
}

class CategoryProductCardState extends State<CategoryProductCard> {
  Widget get categoryProductCard {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 15),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Colors.white.withOpacity(0.2),
            width: 2,
          ),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 55,
          width: 70,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10,10,10,10),
                  color: Colors.white,
                  child: Image.network(
                    widget.icon,
                    fit: BoxFit.fill,
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return categoryProductCard;
  }
}
