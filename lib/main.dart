import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sateva_exchange/pages/home.dart';
import 'package:sateva_exchange/pages/result.dart';
import 'package:sateva_exchange/utils/config.dart';

void main() {
  runApp(const App());
  Config.init();
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
