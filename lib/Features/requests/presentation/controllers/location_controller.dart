import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:smartrecycle/infrastructure/routes.dart';

class LocationController extends GetxController {
  var myPosition = Rxn<LatLng>();
  var markers = <Marker>{}.obs;
  Location location = Location();

  @override
  void onInit() {
    super.onInit();
    getUserLocation();
  }

  Future<void> getUserLocation() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) return;
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return;
    }
    final locData = await location.getLocation();
    myPosition.value = LatLng(locData.latitude!, locData.longitude!);
    markers.add(
      Marker(
        markerId: MarkerId("me"),
        position: myPosition.value!,
        infoWindow: InfoWindow(title: "My position"),
      ),
    );
  }

  void gotorate() {
    Get.toNamed(Routes.rate);
  }
}
