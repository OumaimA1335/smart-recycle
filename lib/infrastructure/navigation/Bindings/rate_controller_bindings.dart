import 'package:get/get.dart';
import 'package:smartrecycle/Features/Rate/presentation/controllers/rate_controller.dart';

class RateControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RateController>(() => RateController());
  }
}
