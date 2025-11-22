import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartrecycle/Features/requests/presentation/controllers/location_controller.dart';

class Location extends GetView<LocationController> {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.cyan),
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: Text(
          'Back',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.cyan,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() {
            if (controller.myPosition.value == null) {
              return Center(child: CircularProgressIndicator());
            } else {
              /*Expanded(
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: controller.myPosition.value!,
                    zoom: 15,
                  ),
                  markers: controller.markers,
                  onMapCreated: (googleMapController) {
                    if (controller.myPosition.value != null) {
                      googleMapController.animateCamera(
                        CameraUpdate.newLatLngZoom(
                          controller.myPosition.value!,
                          15,
                        ),
                      );
                    }
                  },
                ),
              );*/
              return Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.cyan,
                      size: 70,
                    ),
                  ],
                ),
              );
            }
          }),
          SizedBox(height: 20),
          Text(
            'Meeting Location',
            style: TextStyle(
              color: Colors.cyan,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ).marginOnly(left: 20),
          SizedBox(height: 10),
          Text(
            'Share your location with the organization',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ).marginOnly(left: 20),
          SizedBox(height: 10),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [Colors.lightGreen.shade200, Colors.cyan],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.white),
                    Text(
                      "Share your location",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.cyan),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  controller.gotorate();
                },
                child: Center(
                  child: Text(
                    'Complete & Rate',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.cyan,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
