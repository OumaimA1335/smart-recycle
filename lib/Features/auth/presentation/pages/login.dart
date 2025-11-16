import "package:flutter/material.dart";
import "package:get/state_manager.dart";
import "package:smartrecycle/Features/auth/presentation/controllers/login_controller.dart";
import "package:smartrecycle/Features/auth/presentation/widgets/form_login.dart";

class Login extends GetView<LoginController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/eau.png', width: 100, height: 50),
                SizedBox(height: 10),
                Text("Smart Recycle", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),
                Text(
                  "Sign in to continue recycling",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                SizedBox(height: 50),
                FormLogin(),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colors.grey.shade200, thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Colors.grey.shade200, thickness: 1),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 76, 105),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 10,),
                     InkWell(
                      onTap: controller.gotoregister,
                       child: Text(
                        "Create an account",
                        style: TextStyle(
                          color:Colors.cyan,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                                           ),
                     ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
