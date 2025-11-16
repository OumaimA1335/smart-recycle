import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:smartrecycle/infrastructure/navigation.dart';
import 'package:smartrecycle/infrastructure/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  const MyApp({required this.initialRoute, super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
