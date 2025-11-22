import 'package:flutter/material.dart';
class AccountCard extends StatelessWidget {
const AccountCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          )
        ]
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.settings,size: 25,color: Colors.grey.shade500),
              SizedBox(width: 10,),
              Text('Settings',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
              Spacer(),
              Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade300)
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.privacy_tip_outlined,size: 25,color: Colors.grey.shade500),
              SizedBox(width: 10,),
              Text('Privacy & Security',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: const Color.fromARGB(255, 9, 15, 36)),),
              Spacer(),
              Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade300,)
            ],
          )
        ],
      ),
    );
  }
}