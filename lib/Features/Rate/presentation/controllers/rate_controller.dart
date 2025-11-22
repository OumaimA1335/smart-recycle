import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RateController extends GetxController {
  RxDouble rating = 2.0.obs;
  TextEditingController comments = TextEditingController();
}
