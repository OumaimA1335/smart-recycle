import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:get/get.dart';
import 'package:smartrecycle/Features/Rate/presentation/controllers/rate_controller.dart';

class CardRate extends GetView<RateController> {
  const CardRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                colors: [Colors.lightGreen.shade200, Colors.cyan],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.home_work_outlined,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          Text(
            "Green Planet Foundation",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8),
          Text(
            "50 bottles \$5.00",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade300,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "How was your experience",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),

          Obx(
            () => RatingStars(
              value: controller.rating.value,
              onValueChanged: (value) {
                controller.rating.value = value;
              },
              starCount: 5,
              maxValueVisibility: false,
              valueLabelVisibility: false,
              starSize: 30,
              starBuilder: (index, color) {
                if (index < controller.rating.value) {
                  return Icon(Icons.star, color: Colors.amberAccent, size: 30);
                }
                return Icon(
                  Icons.star_border,
                  color: Colors.amberAccent,
                  size: 30,
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Additionnal Comments',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 3,
              controller: controller.comments,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: 'Share your thoughts',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
