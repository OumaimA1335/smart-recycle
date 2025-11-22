import 'package:get/get.dart';
import 'package:smartrecycle/Features/auth/presentation/controllers/profile_controller.dart';

class ProfileControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
