import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:smartrecycle/Features/Ads/presentation/controllers/home_controller.dart';
import 'package:smartrecycle/Features/Ads/presentation/widgets/action_card.dart';
import 'package:smartrecycle/Features/Ads/presentation/widgets/static_card.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StaticCard(),
            SizedBox(height: 15),
            Text(
              'Quick Actions',
              style: TextStyle(fontWeight: FontWeight.w400),
            ).paddingOnly(left: 20),
            ListView.builder(
              padding: EdgeInsets.all(8),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.actions.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    controller.switchpage(index);
                  },
                  child: ActionCard(
                    icon: controller.actions[index]['icon'],
                    typeAction: controller.actions[index]['label'],
                    colorIcon: controller.actions[index]['color'],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.cyan,
        onTap: (value) {
          controller.switchnavigationbar(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Requets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
