// To parse this JSON data, do
//
//     final productCategory = productCategoryFromJson(jsonString);

import 'dart:convert';

ProductCategory productCategoryFromJson(String str) =>
    ProductCategory.fromJson(json.decode(str));

String productCategoryToJson(ProductCategory data) =>
    json.encode(data.toJson());

class ProductCategory {
  ProductCategory({
    this.data,
  });

  List<ProductCatData>? data;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      ProductCategory(
        data: List<ProductCatData>.from(
            json["data"].map((x) => ProductCatData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return 'ProductCategory{data: $data}';
  }
}

class ProductCatData {
  ProductCatData({
    this.id,
    this.name,
    this.imageUrl,
  });

  int? id;
  String? name;
  String? imageUrl;

  factory ProductCatData.fromJson(Map<String, dynamic> json) => ProductCatData(
        id: json["id"],
        name: json["name"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image_url": imageUrl,
      };

  @override
  String toString() {
    return 'ProductCatData{id: $id, name: $name, imageUrl: $imageUrl}';
  }
}
