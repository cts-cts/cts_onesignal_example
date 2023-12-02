import 'package:cts_onesignal_example/src/app.dart';
import 'package:cts_onesignal_example/src/services/fcm_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(App());

  Get.put(FcmService());
}
