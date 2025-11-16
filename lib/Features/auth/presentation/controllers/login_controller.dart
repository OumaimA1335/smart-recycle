import 'package:get/get.dart';
import 'package:smartrecycle/infrastructure/routes.dart';

class LoginController extends GetxController {
  void gotoregister() {
    Get.toNamed(Routes.register);
  }

  void gotohome() {
    Get.toNamed(Routes.home);
  }
}
