// product_view.dart

import 'package:demo_project/Feature/category/controller/product_controller.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final ProductController productController = Get.put(ProductController());
   final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Fetch data when the widget is first created
    productController.fetchProducts( 10); // Adjust parameters as needed

     // Add a listener to the scroll controller to detect when the user reaches the end
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        // User has reached the end of the list, load more data
        productController.fetchProducts(10); // Adjust parameters as needed
      }
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makeup Products'),
        backgroundColor: Appcolor.dummyBGColor,
      ),
      body: Obx(
        () => productController.products.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // You can adjust the number of columns
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: productController.products.length,
                itemBuilder: (context, index) {
                  final product = productController.products[index];
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          // Provide an image URL from your product model
                          product.image,
                       //   'https://via.placeholder.com/150', // Placeholder URL
                          height: 100,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            product.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(product.brand),
                        ),
                      ],
                    ),
                  );
                },
                controller: _scrollController, 
              ),
      ),
    );
  }
}
