class SubCategory {
  var subCategoryId;
  var subCategoryName;
  var category;
  var banner;
  var cutoffFrom;
  var cutoffTo;
  var displayOrder;
  var status;
  var createdDate;
  var updatedDate;
  var expectedTime;

  SubCategory(
      {this.subCategoryId,
        this.subCategoryName,
        this.category,
        this.banner,
        this.cutoffFrom,
        this.cutoffTo,
        this.displayOrder,
        this.status,
        this.createdDate,
        this.updatedDate,
        this.expectedTime});

  SubCategory.fromJson(Map<String, dynamic> json) {
    subCategoryId = json['sub_category_id'];
    subCategoryName = json['sub_category_name'];
    category = json['category'];
    banner = json['banner'];
    cutoffFrom = json['cutoff_from'];
    cutoffTo = json['cutoff_to'];
    displayOrder = json['display_order'];
    status = json['status'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    expectedTime = json['expected_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sub_category_id'] = this.subCategoryId;
    data['sub_category_name'] = this.subCategoryName;
    data['category'] = this.category;
    data['banner'] = this.banner;
    data['cutoff_from'] = this.cutoffFrom;
    data['cutoff_to'] = this.cutoffTo;
    data['display_order'] = this.displayOrder;
    data['status'] = this.status;
    data['created_date'] = this.createdDate;
    data['updated_date'] = this.updatedDate;
    data['expected_time'] = this.expectedTime;
    return data;
  }
}