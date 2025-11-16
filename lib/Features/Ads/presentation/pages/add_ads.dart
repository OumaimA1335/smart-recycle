import 'package:flutter/material.dart';
import 'package:smartrecycle/Features/Ads/presentation/widgets/add_ads_form.dart';

class AddAds extends StatelessWidget {
  const AddAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.cyan
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Back',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.cyan,
            fontSize: 17,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
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
            AddAdsForm(),
          ],
        ),
      ),
    );
  }
}
