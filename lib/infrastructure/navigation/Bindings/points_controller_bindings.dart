import 'package:get/get.dart';
import 'package:smartrecycle/Features/points/presentation/controllers/points_controller.dart';

class PointsControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PointController>(() => PointController());
  }
}
