import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartrecycle/Features/auth/presentation/widgets/account_card.dart';
import 'package:smartrecycle/Features/auth/presentation/widgets/static_card_profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StaticCardProfile(),
            SizedBox(height: 10,),
             
            Text('Accounts',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),).marginOnly(left:30),
            AccountCard(),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.red),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.logout, color: Colors.red),
                            SizedBox(width: 5,),
                            Text(
                              'Logout',
                              style: TextStyle(fontWeight: FontWeight.w400,color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
