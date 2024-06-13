import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_icp/routes/routes.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPage.getnavabar(),
      getPages: AppPage.routes,
    ));
}