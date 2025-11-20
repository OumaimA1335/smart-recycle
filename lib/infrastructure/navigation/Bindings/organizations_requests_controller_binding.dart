import 'package:get/get.dart';
import 'package:smartrecycle/Features/requests/presentation/controllers/organizations_requests_controller.dart';



class OrganizationsRequestsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrganizationsRequestsController>(() => OrganizationsRequestsController());
  }
}
