import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class CategoryResponse {
  var success;
  List<dynamic> data;

  CategoryResponse({this.success, this.data});

  CategoryResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['data'] = this.data;
    return data;
  }
}