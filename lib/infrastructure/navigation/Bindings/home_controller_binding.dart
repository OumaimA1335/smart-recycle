import 'package:get/get.dart';
import 'package:smartrecycle/Features/Ads/presentation/controllers/home_controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
