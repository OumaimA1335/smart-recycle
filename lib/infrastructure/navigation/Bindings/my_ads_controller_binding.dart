import 'package:get/get.dart';
import 'package:smartrecycle/Features/Ads/presentation/controllers/my_ads_controller.dart';

class MyAdsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyAdsController>(() => MyAdsController());
  }
}
