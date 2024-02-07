// product_model.dart
class ProductModel {
  final int id;
  final String name;
  final String brand;
  final String image;
  final String description;

  ProductModel( {required this.id, required this.name, required this.brand,required this.image, required this.description});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name']?? '',
      brand: json['brand'] ?? '',
      image: json['image_link']??'',
      description: json['description']??''
    );

    
  }
}
