import 'package:get/get.dart';
import 'package:smartrecycle/Features/Ads/presentation/controllers/add_ads_controller.dart';


class AddAdsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAdsController>(() => AddAdsController());
  }
}
