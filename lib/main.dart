import 'package:flutter/material.dart';
import 'package:sateva_exchange/pages/home.dart';
import 'package:sateva_exchange/pages/result.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ResultExchange());
  }
}
