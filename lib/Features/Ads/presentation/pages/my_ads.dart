import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:smartrecycle/Features/Ads/presentation/controllers/my_ads_controller.dart';
import 'package:smartrecycle/Features/Ads/presentation/widgets/my_ads_card.dart';

class MyAds extends GetView<MyAdsController> {
  const MyAds({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Publish Ad',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Share your bottles with organizations',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
            
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.myads.length,
                itemBuilder: (context, index) {
                  return MyAdsCard(
                    quantity: controller.myads[index]['quantity'],
                    price: controller.myads[index]['price'],
                    views: controller.myads[index]['views'],
                    requests: controller.myads[index]['requests'],
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
