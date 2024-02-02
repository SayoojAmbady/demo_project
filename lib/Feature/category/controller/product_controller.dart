import 'package:demo_project/Feature/category/model/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';

// class ProductController extends GetxController {
//   RxList<ProductModel> products = <ProductModel>[].obs;

//   Future<void> fetchProducts(int currentPage, int pageSize) async {
//     try {
//       final response = await http.get(
//         Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?page=$currentPage&limit=$pageSize'),
//       );
//       print('API Response: ${response.body}');

//       if (response.statusCode == 200) {
//         final dynamic data = json.decode(response.body);

//         if (data is List) {
//           products.assignAll(data.map((item) => ProductModel.fromJson(item)).toList());
//         } else {
//           throw Exception('Invalid response format. Expected a List.');
//         }
//       } else {
//         throw Exception('Failed to load products');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
// }













class ProductController extends GetxController {
  RxList<ProductModel> products = <ProductModel>[].obs;
  int currentPage = 1;
  int totalPages = 1;

  Future<void> fetchProducts(int pageSize) async {
    try {
      if (currentPage > totalPages) {
        // All pages have been loaded
        return;
      }

      final response = await http.get(
        Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?page=$currentPage&limit=$pageSize'),
      );

      if (response.statusCode == 200) {
        final dynamic data = json.decode(response.body);

        if (data is List) {
          // Update products list
          products.addAll(data.map((item) => ProductModel.fromJson(item)));
          currentPage++; // Increment page for the next request
          totalPages = 3; // Set the total pages from the response or any other source
        } else {
          throw Exception('Invalid response format. Expected a List.');
        }
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}

