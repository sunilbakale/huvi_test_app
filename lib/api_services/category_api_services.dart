import 'package:huvi_test_app/constant/constant.dart';
import 'package:huvi_test_app/dart_models/category_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// service for getting categories
Future<CategoryResponse> getCategories() async {
  var response = await http.get(get_categories);
  final categories = jsonDecode(response.body);
  CategoryResponse listOfCategoriesResponse =
      CategoryResponse.fromJson(categories);
  return listOfCategoriesResponse;
}

// service for getting sub_categories
Future<List<dynamic>> getSubCategories() async {
  List subCategoryList = new List();
  var response = await http.get(get_categories);
  final categories = jsonDecode(response.body);
  for (var subCategory in categories["data"]) {
    List<dynamic> subCategories = subCategory["sub_categories"];
    if (subCategories != null) {
      for (var subCategory in subCategories) {
        subCategoryList.add(subCategory);
      }
    }
  }
  return subCategoryList;
}

//service for getting products from sub_category
Future<List<dynamic>> getProducts() async {
  var response = await http.get(get_products_deals);
  final productsData = jsonDecode(response.body);
  List productsList = productsData["data"];
  return productsList;
}

//service for getting both products and sub_category
Future getProductAndSubCategoryData() async {
  var data = [];
  var products = getProducts();
  var subCategories = getSubCategories();
  var results = await Future.wait([products, subCategories]);
  for (var response in results) {
    data.add(response);
  }
  return data;
}
