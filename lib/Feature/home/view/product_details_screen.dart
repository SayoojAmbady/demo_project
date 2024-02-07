import 'package:demo_project/Feature/home/controller/product_controller.dart';
import 'package:demo_project/Feature/home/shopping_cart/shopping_cart_screen.dart';
import 'package:demo_project/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/Feature/home/model/product_model.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;
  final ProductController productController = Get.put(ProductController());

    void showShoppingBagDialog() {
    Get.to(ShoppingCartScreen()); // Navigate to the ShoppingCartScreen
  }


  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        title: const Text('Product Details'),
        elevation: 0,
        backgroundColor: Colors.white,
             actions:  [
           IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border_outlined,color: Colors.black,)),
          IconButton(onPressed: showShoppingBagDialog, icon:const Icon(Icons.shopping_bag_outlined,color: Colors.black,))
        ],


      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                 borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  product.image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Name: ${product.name}',
                style: TitleFonts.headline2,
              ),
              const SizedBox(height: 8),
              Text(
                'Brand: ${product.brand}',
                style: TitleFonts.headline3,
              ),
              const SizedBox(height: 8),
              Text(
                'Description: ${product.description}',
                style: TitleFonts.headline5,
              ),
      
              const SizedBox(
                height: 16,
              ),
      
              // Add more details as needed
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SPSolidButton(
              text: "WishList",
              onpressed: () {},
              width: MediaQuery.of(context).size.width / 3,
              height: 45,
            ),
            SPSolidButton(
              text: "Add to Bag",
              onpressed: () {
                productController.addToShoppingCart(product);
                showItemAddedSnackBar(product.name);
              },
              width: MediaQuery.of(context).size.width / 3,
              height: 45,
            )
          ],
        ),
      ),
    );

  }
  void showItemAddedSnackBar(String itemName) {
    Get.snackbar(
      'Added to Shopping Cart',
      '$itemName is added to the Shopping Cart!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.transparent,
      colorText: Colors.black,
    );
  }


}
