import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_routes.dart';
import 'package:kookit/utils/routes_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KooKit',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes().allRoutes,
      initialRoute: RoutesStrings.splash,
    );
  }
}
