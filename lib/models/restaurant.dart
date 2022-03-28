// To parse this JSON data, do
//
//     final restaurantModel = restaurantModelFromJson(jsonString);

import 'dart:convert';

RestaurantModel restaurantModelFromJson(String str) =>
    RestaurantModel.fromJson(json.decode(str));

String restaurantModelToJson(RestaurantModel data) =>
    json.encode(data.toJson());

class RestaurantModel {
  RestaurantModel({
    required this.icon,
    required this.name,
    required this.type,
    required this.category,
    required this.rating,
    required this.favourite,
  });

  String icon;
  String name;
  String type;
  String category;
  double rating;
  bool favourite;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      RestaurantModel(
        icon: json["icon"],
        name: json["name"],
        type: json["type"],
        category: json["category"],
        rating: json["rating"],
        favourite: json["favourite"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "name": name,
        "type": type,
        "category": category,
        "rating": rating,
        "favourite": favourite,
      };
}
