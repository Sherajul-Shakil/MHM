// To parse this JSON data, do
//
//     final productReview = productReviewFromJson(jsonString);

import 'dart:convert';

ProductReview productReviewFromJson(String str) =>
    ProductReview.fromJson(json.decode(str));

String productReviewToJson(ProductReview data) => json.encode(data.toJson());

class ProductReview {
  ProductReview({
    this.data,
  });

  List<ReviewData>? data;

  factory ProductReview.fromJson(Map<String, dynamic> json) => ProductReview(
        data: List<ReviewData>.from(
            json["data"].map((x) => ReviewData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return 'ProductReview{data: $data}';
  }
}

class ReviewData {
  ReviewData({
    this.userName,
    this.rating,
    this.review,
  });

  String? userName;
  int? rating;
  String? review;

  factory ReviewData.fromJson(Map<String, dynamic> json) => ReviewData(
        userName: json["user_name"],
        rating: json["rating"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "rating": rating,
        "review": review,
      };

  @override
  String toString() {
    return 'ReviewData{userName: $userName, rating: $rating, review: $review}';
  }
}
