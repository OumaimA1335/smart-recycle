import 'package:get/get.dart';
import 'package:smartrecycle/Features/auth/presentation/controllers/login_controller.dart';

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
