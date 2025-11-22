import 'package:flutter/material.dart';

class EarnedBadge extends StatelessWidget {
  const EarnedBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Earned badge',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: [Colors.lightGreen.shade200, Colors.cyan],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Icon(
                      Icons.water_drop_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Water Save',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: [Colors.lightGreen.shade200, Colors.cyan],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Icon(
                      Icons.eco_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Eco warrior',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    colors: [Colors.lightGreen.shade200, Colors.cyan],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Icon(
                  Icons.recycling_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Recycling Pro',
                style: TextStyle(fontSize: 10, color: Colors.grey.shade400,fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    colors: [Colors.lightGreen.shade200, Colors.cyan],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Icon(
                  Icons.wallet_giftcard,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Gold collector',
                style: TextStyle(fontSize: 10, color: Colors.grey.shade400,fontWeight: FontWeight.w500),
              ),
            ],
          ),
            ],
          ),
        ],
      ),
    );
  }
}
