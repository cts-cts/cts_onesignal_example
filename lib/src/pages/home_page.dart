import 'package:cts_onesignal_example/src/services/network_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool connected = true;

  final networkService = Get.put(NetworkService());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Example',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                final val = await networkService.isConnected;
                setState(() {
                  connected = val;
                });
              },
              child: Text('Check Connection'),
            ),
            Text('$connected')
          ],
        ),
      ),
    );
  }
}
