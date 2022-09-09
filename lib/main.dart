import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'menu_page.dart';

void main(List<String> args) {
  runApp(DevicePreview(enabled: true,tools: [
      ...DevicePreview.defaultTools
  ], builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:MenuPage(),
    );
  }
}