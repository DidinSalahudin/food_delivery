import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/router.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routeApp,
      initialRoute: '/splash',
    );
  }
}
