import 'package:get/get.dart';
import 'package:smartrecycle/infrastructure/routes.dart';

class UsersRequestsController extends GetxController {
  RxString requestStatus = 'pending'.obs;

  List<Map<String, dynamic>> requests = [
    {
      'name': 'Green foundation',
      'timePublish': '2 hours ago',
      'status': 'pending',
    },
    {
      'name': 'Green foundation',
      'timePublish': '1 hour ago',
      'status': 'accept',
    },
    {
      'name': 'Green foundation',
      'timePublish': '30 minutes ago',
      'status': 'pending',
    },
  ];
  void sharelocation() {
    Get.toNamed(Routes.loaction);
  }
}
