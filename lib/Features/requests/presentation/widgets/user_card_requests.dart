import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartrecycle/Features/requests/presentation/controllers/users_requests_controller.dart';

class UserCardRequests extends GetView<UsersRequestsController> {
  final String name;
  final String time;
  final String status;
  const UserCardRequests({
    required this.name,
    required this.time,
    required this.status,
    Key? key}) : super(key: key);

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
              SizedBox(width: 5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      time,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 55,
                height: 30,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
              ).marginOnly(bottom: 20),
            ],
          ),
          SizedBox(height: 20),
          Obx(
            () => Row(
              children: [
                if (controller.requestStatus.value.toLowerCase() ==
                    'pending') ...[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(color: Colors.cyan),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            "Accept",
                            style: TextStyle(
                              color: Colors.cyan,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            "Decline",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.cyan),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.cyan,
                            ),
                            Text(
                              'Share Location',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.cyan,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
