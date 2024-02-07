import 'package:demo_project/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/Feature/home/controller/product_controller.dart';
import 'package:get/get.dart';

class ShoppingCartScreen extends StatelessWidget {
  final ProductController productController = Get.find<ProductController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back,color: Colors.grey,)),
        title: Text('Shopping Bag',style: const TextStyle(color: Colors.black),),
        backgroundColor: Appcolor.ScaffoldBGColor,
    
      ),
      body: Obx(
        () {
          if (productController.addedItems.isEmpty) {
            return Center(
              child: Text('Your shopping Bag is empty.'),
            );
          } else {
            return ListView.builder(
              itemCount: productController.addedItems.length,
              itemBuilder: (context, index) {
                final product = productController.addedItems[index];
                return ListTile(
                  leading: Image.network(
                    product.image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,),
    
                  title: Text(product.name),
                  subtitle: Text(product.brand),
                  trailing: IconButton(onPressed:(){productController.addedItems.removeAt(index);} , icon: Icon(Icons.delete))
                  // You can add more details or customize the UI based on your ProductModel
                );
              },
            );
          }
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SPSolidButton(text: "Place Order", width: MediaQuery.of(context).size.width,height: 45,),
      ),
    );
  }
}
