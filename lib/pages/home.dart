import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();

  bool carregando = false;

  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Scaffold(
          drawer: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Configuration")],
              ),
            ),
          ),
          appBar: AppBar(
            centerTitle: true,
            title: Text("Exchange"),
            backgroundColor: AppColors.primaryColor,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 28),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "Insira o valor";
                    },
                    keyboardType: TextInputType.number,
                    style:
                        TextStyle(fontSize: 12, color: AppColors.primaryColor),
                    controller: controller,
                    cursorColor: AppColors.primaryColor,
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(
                          CupertinoIcons.bitcoin,
                          size: 30,
                          color: Color(0xff157992),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff157992)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF157992)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(11))),
                        fillColor: AppColors.bgColor,
                        // focusColor: Colors.red,
                        // hoverColor: Colors.red,
                        labelText: 'Valor',
                        labelStyle: TextStyle(color: Color(0xff157992)),
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: TextButton(
                  onPressed: () async {
                    debugPrint("Pesquisando por::: ${controller.text}");

                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        carregando = true;
                      });
                    }
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: AppColors.primaryColor),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Center(
                      child: !carregando
                          ? Text("Converter")
                          : CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
