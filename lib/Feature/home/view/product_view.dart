import 'package:demo_project/Feature/home/controller/product_controller.dart';
import 'package:demo_project/Feature/home/model/product_model.dart';
import 'package:demo_project/Feature/home/shopping_cart/shopping_cart_screen.dart';
import 'package:demo_project/Feature/home/view/product_details_screen.dart';
import 'package:demo_project/theme/colors.dart';
import 'package:demo_project/widgets/customtext.dart';
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
    productController.fetchProducts(1, 2); // Adjust parameters as needed

    // Add a listener to the scroll controller to detect when the user reaches the end
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        // User has reached the end of the list, load more data
        productController.fetchProducts(1, 2); // Adjust parameters as needed
      }
    });
  }

void showShoppingBagDialog() {
    Get.to(ShoppingCartScreen()); // Navigate to the ShoppingCartScreen
  }

  
  void showProductDetails(ProductModel product) {
    Get.to(ProductDetailsScreen(product: product)); // Navigate to the ProductDetailsScreen
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.black,)),
        title: Row(
          children: [
             CustomText(text: "ShopX"),
            Image.asset("assets/images/logo-color.png",height: 50,width: 35,),
           
          ],
        ),
        
        backgroundColor: Appcolor.ScaffoldBGColor,
        actions:  [
          IconButton(onPressed:(){}, icon:const Icon(Icons.notifications_outlined,color: Colors.black,)),
           IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border_outlined,color: Colors.black,)),
          IconButton(onPressed: showShoppingBagDialog, icon:const Icon(Icons.shopping_bag_outlined,color: Colors.black,))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                if (productController.products.isEmpty) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // You can adjust the number of columns
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: productController.products.length,
                    itemBuilder: (context, index) {
                      final product = productController.products[index];
                      return GestureDetector(
                        onTap:(){
                        showProductDetails(product);
                          
                        } ,
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                // Provide an image URL from your product model
                                product.image,
                                height: 81,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                product.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(product.brand,overflow: TextOverflow.ellipsis,),
                              
                            ),
                          ],
                        ),
                      ));
                    },
                    controller: _scrollController,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }



}
