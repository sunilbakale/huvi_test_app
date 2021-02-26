import 'package:huvi_test_app/dart_models/sub_category_model.dart';

class Category {
  var categoryId;
  var categoryName;
  var description;
  var banner;
  var cutoffFrom;
  var cutoffTo;
  var createdDate;
  var updatedDate;
  var displayOrder;
  var status;
  var expectedTime;
  var expDelText;
  List<SubCategory> subCategories;

  Category(
      {this.categoryId,
      this.categoryName,
      this.description,
      this.banner,
      this.cutoffFrom,
      this.cutoffTo,
      this.createdDate,
      this.updatedDate,
      this.displayOrder,
      this.status,
      this.expectedTime,
      this.expDelText,
      this.subCategories});

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    description = json['description'];
    banner = json['banner'];
    cutoffFrom = json['cutoff_from'];
    cutoffTo = json['cutoff_to'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    displayOrder = json['display_order'];
    status = json['status'];
    expectedTime = json['expected_time'];
    expDelText = json['exp_del_text'];
    if (json['sub_categories'] != null) {
      subCategories = new List<SubCategory>();
      json['sub_categories'].forEach((v) {
        subCategories.add(new SubCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['description'] = this.description;
    data['banner'] = this.banner;
    data['cutoff_from'] = this.cutoffFrom;
    data['cutoff_to'] = this.cutoffTo;
    data['created_date'] = this.createdDate;
    data['updated_date'] = this.updatedDate;
    data['display_order'] = this.displayOrder;
    data['status'] = this.status;
    data['expected_time'] = this.expectedTime;
    data['exp_del_text'] = this.expDelText;
    if (this.subCategories != null) {
      data['sub_categories'] =
          this.subCategories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCategories {
  String subCategoryId;
  String subCategoryName;
  String category;
  String banner;
  String cutoffFrom;
  String cutoffTo;
  String displayOrder;
  String status;
  String createdDate;
  String updatedDate;
  String expectedTime;
}