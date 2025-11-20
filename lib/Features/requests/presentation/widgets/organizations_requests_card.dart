import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrganizationsRequestsCard extends StatelessWidget {
  final String name;
  final String location;
  final double rating;
  const OrganizationsRequestsCard({
    required this.location,
    required this.name,
    required this.rating,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 70,
                height: 60,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightGreen.shade200, Colors.cyan],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Icon(
                  Icons.home_work_outlined,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Icon(Icons.check, color: Colors.white, size: 15),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, size: 12),
              Text(
                location,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.star_border_outlined,
                color: Colors.amberAccent,
                size: 12,
              ),
              Text(
                rating.toString(),
                style: TextStyle(fontSize: 12, color: Colors.amberAccent),
              ),
            ],
          ).marginOnly(left: 90),
          Container(
            width: 70,
            height: 35,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.cyan),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              'Recycling',
              style: TextStyle(color: Colors.cyan, fontSize: 10),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [Colors.lightGreen.shade200, Colors.cyan],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Send request",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
