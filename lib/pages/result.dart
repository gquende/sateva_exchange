import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sateva_exchange/controllers/exchange_controller.dart';

class ResultExchange extends StatelessWidget {
  //const ResultExchange({Key? key}) : super(key: key);

  ExchangeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: size.height * 0.3,
            child: Column(
              children: [
                Text("Valor a converter"),
                Text(
                  "20202",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          Container(
            height: size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardInformation("Teste", 10, context),
                CardInformation("Teste", 10, context),
                CardInformation("Teste", 10, context),
                CardInformation("Teste", 10, context),
                CardInformation("Teste", 10, context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget CardInformation(String title, double value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(
                "$value Kzs",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  spreadRadius: 0.4,
                  offset: Offset(0, 1))
            ]),
      ),
    );
  }
}
