// import 'dart:convert';

// import 'package:demo_project/Feature/product/model/product_details_model.dart';
// import 'package:demo_project/service/network_handler/network_handler.dart';
// import 'package:get/get.dart';


// class ProductDetailsController extends GetxController {
//   RxBool isLoading = false.obs;
//   List<ProductDetailItem> productList = [];

//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     getProductDetails();
//   }

//   getProductDetails() async {
//     isLoading(true);
//     var response = await NetworkHandler.get("product-details/getAll", "");
//     var decodedResponse = json.decode(response); // Parse the JSON string
//     ProductDetailsModel productDetailModel =
//         ProductDetailsModel.fromJson(decodedResponse);
//     print(productDetailModel.data);
//     productList = productDetailModel.data;
//     isLoading(false);
//   }
// }