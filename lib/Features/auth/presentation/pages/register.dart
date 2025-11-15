import 'package:flutter/material.dart';
import 'package:smartrecycle/Features/auth/presentation/widgets/form_register.dart';
class Register extends StatelessWidget {
const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:Icon(Icons.arrow_back_rounded) ,
        backgroundColor: Colors.white,
        elevation: 0,
         surfaceTintColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Image.asset('assets/images/eau.png', width: 100, height: 50),          
                SizedBox(height: 10),
                Text("Smart Recycle", style: TextStyle(color: Colors.cyan , fontWeight: FontWeight.w500,fontSize: 20,fontStyle: FontStyle.italic)),
                SizedBox(height: 10),
                Text("Sign up", style: TextStyle(color: Colors.black , fontWeight: FontWeight.w500,fontSize: 15)),
                SizedBox(height: 50),
                FormRegister(),
            ],
          ),
        ),
      ),
    );
  }
}