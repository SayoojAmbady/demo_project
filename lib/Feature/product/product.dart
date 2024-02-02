// import 'package:demo_project/Feature/product/controller/product_details_controller.dart';
// import 'package:demo_project/Feature/product/product_card/product_card.dart';
// import 'package:demo_project/foundation/sp_icon/sp_icon.dart';
// import 'package:demo_project/theme/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


// class Product extends StatelessWidget {
//   var productDetailsController = Get.put(ProductDetailsController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title:  Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("MEN APPAREL",
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
//                   Text('1024 Items',
//                       style: TextStyle(fontSize: 12, color: Appcolor.captionColor))
//                 ]),
//             centerTitle: false,
//             leading: IconButton(
//                 icon: const Icon(Icons.arrow_back_ios_new), onPressed: () {}),
//             actions: [
//               IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
//               IconButton(
//                   onPressed: () {}, icon: const Icon(Icons.favorite_border)),
//               IconButton(
//                   onPressed: () {},
//                   icon: const SPIcon(assetname: 'shopping-bag.png'))
//             ]),
//         body: Obx(() => productDetailsController.isLoading.value
//             ? const Center(child: CircularProgressIndicator())
//             : ListView.builder(
//                 itemCount:
//                     (productDetailsController.productList.length / 2).ceil(),
//                 itemBuilder: (BuildContext context, int rowIndex) {
//                   return Row(children: [
//                     Expanded(
//                         child: ProductCard(
//                             item: productDetailsController
//                                 .productList[rowIndex * 2])),
//                     const SizedBox(width: 1),
//                     Expanded(
//                         child: (rowIndex * 2 + 1 <
//                                 productDetailsController.productList.length)
//                             ? ProductCard(
//                                 item: productDetailsController
//                                     .productList[rowIndex * 2 + 1])
//                             : const SizedBox())
//                   ]);
//                 })));
//   }
// }