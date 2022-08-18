// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  Products({
    required this.id,
    required this.productName,
    required this.productDescription,
    required this.deliveryTime,
    required this.imagePath,
    required this.categoryId,
    required this.category,
  });

  int id;
  String productName;
  String productDescription;
  int deliveryTime;
  String imagePath;
  int categoryId;
  String category;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["ID"],
        productName: json["ProductName"],
        productDescription: json["ProductDescription"],
        deliveryTime: json["DeliveryTime"],
        imagePath: json["ImagePath"],
        categoryId: json["CategoryID"],
        category: json["Category"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "ProductName": productName,
        "ProductDescription": productDescription,
        "DeliveryTime": deliveryTime,
        "ImagePath": imagePath,
        "CategoryID": categoryId,
        "Category": category,
      };
}
