import 'package:advance_todo_app/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplaceController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splaceHandel();
  }

  void splaceHandel() async {
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(
        HomePage(),
      );
    });
  }
}
