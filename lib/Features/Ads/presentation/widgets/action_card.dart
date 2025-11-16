import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionCard extends StatelessWidget {
  final IconData icon;
  final String typeAction;
  final Color colorIcon;
  const ActionCard({
    required this.colorIcon,
    required this.icon,
    required this.typeAction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),

      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: colorIcon,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(icon, color: Colors.white),
          ),

          Text(
            typeAction,
            style: TextStyle(fontWeight: FontWeight.w400),
          ).marginOnly(right: 150),

          Icon(Icons.arrow_forward_ios, color: Colors.grey.shade300),
        ],
      ),
    );
  }
}
