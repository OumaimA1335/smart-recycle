import 'package:get/get.dart';

class PointController extends GetxController {
  List<Map<String, dynamic>> rewards = [
    {'name': 'Free coffee', 'points': '500 points', 'status': 'unlocked'},
    {'name': '100% discount', 'points': '1000 points', 'status': 'unlocked'},
    {'name': 'Premium badge', 'points': '2500 points', 'status': 'locked'},
    {'name': 'VIP Status', 'points': '5000 points', 'status': 'locked'},
  ];
}
