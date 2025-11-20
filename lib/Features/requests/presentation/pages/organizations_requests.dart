import 'package:flutter/material.dart';
import 'package:smartrecycle/Features/requests/presentation/controllers/organizations_requests_controller.dart';
import 'package:smartrecycle/Features/requests/presentation/widgets/organizations_requests_card.dart';

import 'package:get/state_manager.dart';

class OrganizationsRequests extends GetView<OrganizationsRequestsController> {
  const OrganizationsRequests({Key? key}) : super(key: key);

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
                'Organizations',
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Find nearby eco partners ',
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
                itemCount: controller.organizations.length,
                itemBuilder: (context, index) {
                  return OrganizationsRequestsCard(
                    name: controller.organizations[index]['name'],
                    location: controller.organizations[index]['location'],
                    rating: controller.organizations[index]['rating'],
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
