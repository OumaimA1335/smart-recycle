import 'package:get/get.dart';
import 'package:smartrecycle/Features/requests/presentation/controllers/users_requests_controller.dart';


class UserRequestsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersRequestsController>(() => UsersRequestsController());
  }
}
