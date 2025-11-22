import 'package:flutter/material.dart';

class AvailableReward extends StatelessWidget {
  final String name;
  final String points;
  final String status;
  const AvailableReward({
    required this.name,
    required this.points,
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: TextStyle(fontSize: 14)),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: status == 'unlocked'
                      ? Colors.lightGreen.shade300
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Text(
            points,
            style: TextStyle(
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
