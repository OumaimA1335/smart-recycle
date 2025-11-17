import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:smartrecycle/infrastructure/routes.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> actions = [
    {
      'icon': Icons.add_box_outlined,
      'color': Colors.cyan,
      'label': 'Publish Ad',
    },
    {
      'icon': Icons.file_copy_outlined,
      'color': Colors.lightGreen,
      'label': 'My Ads',
    },
    {
      'icon': Icons.supervised_user_circle_outlined,
      'color': Colors.cyan,
      'label': 'Organizations',
    },
    {
      'icon': Icons.local_offer_outlined,
      'color': Colors.lightGreen,
      'label': 'My requets',
    },
    {
      'icon': Icons.card_giftcard_rounded,
      'color': Colors.yellow[400],
      'label': 'My points',
    },
  ];
  void switchpage(int index) {
    switch (index) {
      case 0:
        Get.toNamed(Routes.addAds);
        break;
      case 1:
        Get.toNamed(Routes.ads);
        break;
      default:
        break;
    }
  }
}
