// import 'dart:convert';

// ProductDetailsModel productDetailsModelFromJson(String str) => ProductDetailsModel.fromJson(json.decode(str));

// String productDetailsModelToJson(ProductDetailsModel data) => json.encode(data.toJson());

// class ProductDetailsModel {
//     List<ProductDetailItem> data;

//     ProductDetailsModel({
//         required this.data,
//     });

//     factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => ProductDetailsModel(
//         data: List<ProductDetailItem>.from(json["data"].map((x) => ProductDetailItem.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//     };
// }

// class ProductDetailItem {
//     String id;
//     String name;
//     String desc;
//     String? wishlisted;
//     String actualPrice;
//     String discountedPrice;
//     String discound;
//     String category;
//     String subCategory;
//     String type;
//     String genere;
//     String brand;
//     String imageUrl;
//     String? rating;
//     String? noOfReviews;

//     ProductDetailItem({
//         required this.id,
//         required this.name,
//         required this.desc,
//         this.wishlisted,
//         required this.actualPrice,
//         required this.discountedPrice,
//         required this.discound,
//         required this.category,
//         required this.subCategory,
//         required this.type,
//         required this.genere,
//         required this.brand,
//         required this.imageUrl,
//         this.rating,
//         this.noOfReviews,
//     });

//     factory ProductDetailItem.fromJson(Map<String, dynamic> json) => ProductDetailItem(
//         id: json["_id"],
//         name: json["name"],
//         desc: json["desc"],
//         wishlisted: json["wishlisted"],
//         actualPrice: json["actual_price"],
//         discountedPrice: json["discounted_price"],
//         discound: json["discound"],
//         category: json["category"],
//         subCategory: json["sub_category"],
//         type: json["type"],
//         genere: json["genere"],
//         brand: json["brand"],
//         imageUrl: json["image_url"],
//         rating: json["rating"],
//         noOfReviews: json["no_of_reviews"],
//     );

//     Map<String, dynamic> toJson() => {
//         "_id": id,
//         "name": name,
//         "desc": desc,
//         "wishlisted": wishlisted,
//         "actual_price": actualPrice,
//         "discounted_price": discountedPrice,
//         "discound": discound,
//         "category": category,
//         "sub_category": subCategory,
//         "type": type,
//         "genere": genere,
//         "brand": brand,
//         "image_url": imageUrl,
//         "rating": rating,
//         "no_of_reviews": noOfReviews,
//     };
// }