import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartrecycle/Features/requests/presentation/controllers/users_requests_controller.dart';
import 'package:smartrecycle/Features/requests/presentation/widgets/user_card_requests.dart';

class UsersRequests extends GetView<UsersRequestsController> {
  const UsersRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(UsersRequestsController());
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
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Requests',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Manage Your bottles requests',
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
                itemCount: controller.requests.length,
                itemBuilder: (context, index) {
                  return UserCardRequests(
                    name: controller.requests[index]['name'],
                    time: controller.requests[index]['timePublish'],
                    status: controller.requests[index]['status'],
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
