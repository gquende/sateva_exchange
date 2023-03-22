import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../models/configuration.dart';

class AppColors {
  static final backgroundColor = Colors.white;

  static final primaryColor = Color(0xFF069abf);
  static final hoverColor = Color(0xff9E1223);
  static final bgColor = Color(0xFFf5f5f5);
  static final greyColor = Color(0xfff5f5f5);
  static final textPrimaryColor = Color(0xFF2f2c58);
  static final textSecundaryColor = Color(0xFF90939c);
}

class Config {
  static init() {
    var inject = GetIt.instance;

    inject.registerLazySingleton(() => ExchangeConfig(
        taxaComissaoCarregamento: 0.2,
        taxaIVAComissaoCarregamento: 0.4,
        taxaComissaoCompra: 5.6,
        taxaIVAComissaoCompra: 5.6,
        exchangeBuyValue: 6.0,
        exchangeSellValue: 3.6));
  }
}
