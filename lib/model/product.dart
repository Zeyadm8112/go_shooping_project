// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
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

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
