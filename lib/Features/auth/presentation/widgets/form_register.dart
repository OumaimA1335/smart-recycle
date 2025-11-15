import 'package:flutter/material.dart';
import 'package:smartrecycle/Features/auth/presentation/widgets/account_type.dart';

class FormRegister extends StatelessWidget {
  const FormRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Full Name",
          style: TextStyle(
            color: Color(0xFF314158),
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Oumaima chelly',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.person_4_outlined),

              suffixIconColor: Colors.cyan,
              prefixIconColor: Colors.cyan,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Colors.cyan, width: 2),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Email Address",
          style: TextStyle(
            color: Color(0xFF314158),
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'your@email.com',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.mail),

              suffixIconColor: Colors.cyan,
              prefixIconColor: Colors.cyan,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide
                    .none, // Remove base border for better shadow look
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Colors.cyan, width: 2),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Password",
          style: TextStyle(
            color: Color(0xFF314158),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'your password',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.lock_outline_rounded),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              suffixIconColor: Colors.cyan,
              prefixIconColor: Colors.cyan,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Colors.cyan, width: 2),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Confirm password",
          style: TextStyle(
            color: Color(0xFF314158),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: ' Confirm your password',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: Icon(Icons.lock_outline_rounded),
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              suffixIconColor: Colors.cyan,
              prefixIconColor: Colors.cyan,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Colors.cyan, width: 2),
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Account Type",
          style: TextStyle(
            color: Color(0xFF314158),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AccountType(
              description: 'Recycle & earn',
              icon: Icons.person_2_outlined,
              type: 'Individual',
            ),
             AccountType(
              description: 'Collect Bottles',
              icon: Icons.group,
              type: 'Organization',
            ),
          ],
        ),
        SizedBox(height: 30),
        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [
                Colors.lightGreen.shade200,
                Colors.cyan,

                /// Vert
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Text(
              "Sign up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
