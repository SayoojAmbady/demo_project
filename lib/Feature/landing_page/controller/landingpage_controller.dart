import 'package:demo_project/service/network_handler/network_handler.dart';
import 'package:get/get.dart';


class LandingPageController extends GetxController {
  RxString? token;
  RxBool loggedIn = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLogin();
  }

  void checkLogin() async {
    var scopedToken = await NetworkHandler.getToken('');
    if (scopedToken != null) {
      token?.value = scopedToken;
      loggedIn.value = true;
      var response = await NetworkHandler.getToken("",);
      print(response);
    }
  }
}