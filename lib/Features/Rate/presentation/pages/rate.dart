import 'package:flutter/material.dart';
import 'package:smartrecycle/Features/Rate/presentation/widgets/card_rate.dart';

class Rate extends StatelessWidget {
  const Rate({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Rate Your experience",
              style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Help us improve the Smart Recycle community",
              style: TextStyle(
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          CardRate(),
           Padding(
             padding: const EdgeInsets.all(20),
             child: Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [Colors.lightGreen.shade200, Colors.cyan],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Center(child: 
                     Text(
                        "Submit rating",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                  )
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
