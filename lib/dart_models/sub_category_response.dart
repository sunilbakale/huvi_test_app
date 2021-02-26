import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class SubCategoryResponse {
  var data;

  SubCategoryResponse(this.data);

  SubCategoryResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data;
    return data;
  }
}
