import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mychact/app/modules/chat1/chat1_bindings/chat1_binding.dart';
import 'package:mychact/app/modules/chat1/chat1_views/chat1_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      initialBinding: ChatBinding(),
      home: ChatScreen(),
    ),
  );
}
