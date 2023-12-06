import 'dart:developer';

import 'package:cts_onesignal_example/src/config/env.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class FcmService extends GetxService {
  @override
  void onReady() async {
    await initFcm();
    super.onReady();
  }
}

Future<void> initFcm() async {
  OneSignal.initialize(ENV.onesignalAppId);
  await login();

  klog('FCM servic initialized');
  await OneSignal.Notifications.requestPermission(true);
}

Future<void> login() async {
  await OneSignal.login('nazrul78');

  klog('logged in');
}

klog(dynamic data) {
  log('$data');
}
