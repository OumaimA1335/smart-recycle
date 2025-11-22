import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartrecycle/Features/points/presentation/controllers/points_controller.dart';
import 'package:smartrecycle/Features/points/presentation/widgets/available_reward.dart';
import 'package:smartrecycle/Features/points/presentation/widgets/earned_badge.dart';
import 'package:smartrecycle/Features/points/presentation/widgets/first_card.dart';
import 'package:smartrecycle/Features/points/presentation/widgets/progress_card.dart';

class Points extends GetView<PointController> {
  const Points({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Points',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Track your eco impacts',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 15),
              FirstCard(),
              SizedBox(height: 15),
              ProgressCard(),
              EarnedBadge(),
              Text(
                'Available Rewards',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.rewards.length,
                itemBuilder: (context, index) {
                  return AvailableReward(
                    name: controller.rewards[index]['name'],
                    points: controller.rewards[index]['points'],
                    status: controller.rewards[index]['status'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
