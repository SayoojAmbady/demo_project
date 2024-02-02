// import 'package:demo_project/Feature/product/model/product_details_model.dart';
// import 'package:demo_project/theme/colors.dart';
// import 'package:flutter/material.dart';

// class ProductCard extends StatelessWidget {
//   final ProductDetailItem item;
//   const ProductCard({required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(children: [
//       Container(
//           height: MediaQuery.of(context).size.height / 3,
//           child: Stack(children: [
//             Container(
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(
//                             "http://localhost:3000/uploads/product_images/${item.imageUrl}.jpg")))),
//             Positioned(
//                 left: 10,
//                 bottom: 10,
//                 child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Appcolor.whiteColor),
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(item.rating ?? "",
//                               style: const TextStyle(fontSize: 13)),
//                           const Icon(Icons.star,
//                               color: Colors.green, size: 13),
//                           Text("\t| ${item.noOfReviews}",
//                               style: const TextStyle(fontSize: 13))
//                         ])))
//           ])),
//       Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           child:
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//             Flexible(
//                 flex: 1,
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(item.name,
//                           style: const TextStyle(
//                               fontSize: 17, fontWeight: FontWeight.bold)),
//                       Text(item.desc,
//                           style:  TextStyle(color: Appcolor.captionColor)),
//                       Row(children: [
//                         Text("₹${item.actualPrice}",
//                             style: const TextStyle(
//                               fontSize: 10,
//                               color: Colors.red,
//                               decoration: TextDecoration.lineThrough,
//                             )),
//                         Text("\t ₹${item.discountedPrice}",
//                             style: const TextStyle(
//                               fontSize: 10,
//                               color: Colors.green,
//                             )),
//                         Text("\t ${item.discound} %Off",
//                             style: TextStyle(
//                                 fontSize: 10,
//                                 color: Colors.yellowAccent,
//                                 fontWeight: FontWeight.w600))
//                       ])
//                     ])),
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.favorite_border,
//                   size: 20,
//                 ))
//           ]))
//     ]));
//   }
// }