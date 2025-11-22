import 'package:get/get.dart';

import 'package:smartrecycle/Features/requests/presentation/controllers/location_controller.dart';

class LocationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationController>(() => LocationController());
  }
}
