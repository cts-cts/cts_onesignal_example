import 'dart:developer';

import 'package:cts_onesignal_example/src/config/env.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class FcmService extends GetxService {
  @override
  void onInit() async {
    await initFcm();
    super.onInit();
  }

  Future<void> initFcm() async {
    OneSignal.initialize(ENV.onesignalAppId);
    await OneSignal.Notifications.requestPermission(true);

    log('FCM servic initialized');
  }
}
