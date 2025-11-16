import 'package:get/get.dart';
import 'package:smartrecycle/Features/auth/presentation/controllers/register_controller.dart';

class RegisterControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}
