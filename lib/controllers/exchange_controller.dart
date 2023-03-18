import 'package:get/get.dart';
import 'package:sateva_exchange/models/configuration.dart';

class ExchangeController extends GetxController {
  Exchange exchangeSettings;
  double value;
  double? totalTaxValue;
  double? ivaComissaoCarregamento;
  double? comissaoCarregamento;
  double? ivaComissaoPagamento;
  double? comissaoPagamento;
  double? valorACarregar;
  double? totalTaxaCarregamento;
  double? totalTaxaPagamento;
  ExchangeController({required this.exchangeSettings, required this.value}) {
    this.comissaoCarregamento =
        this.value * exchangeSettings.taxaComissaoCarregamento;

    this.ivaComissaoCarregamento =
        this.value * exchangeSettings.taxaIVAComissaoCarregamento;
  }

  double getEarns() {
    return 0;
  }
}
