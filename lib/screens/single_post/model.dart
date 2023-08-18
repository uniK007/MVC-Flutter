import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

class DataModel {
  DataModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }
}
