class ExchangeConfig {
  double taxaComissaoCarregamento;
  double taxaIVAComissaoCarregamento;
  double taxaComissaoCompra;
  double taxaIVAComissaoCompra;
  double exchangeSellValue;
  double exchangeBuyValue;

  ExchangeConfig(
      {required this.taxaComissaoCarregamento,
      required this.taxaIVAComissaoCarregamento,
      required this.taxaComissaoCompra,
      required this.taxaIVAComissaoCompra,
      required this.exchangeBuyValue,
      required this.exchangeSellValue});

  static ExchangeConfig fromMap(Map<String, dynamic> map) {
    return ExchangeConfig(
        taxaComissaoCarregamento: map['taxaComissaoCarregamento'],
        taxaIVAComissaoCarregamento: map['taxaIVAComissaoCarregamento'],
        taxaComissaoCompra: map['taxaComissaoCompra'],
        taxaIVAComissaoCompra: map['taxaIVAComissaoCompra'],
        exchangeBuyValue: map['exchangeBuyValue'],
        exchangeSellValue: map['exchangeSellValue']);
  }

  Map<String, dynamic> toMap() {
    return {
      "taxaComissaoCarregamento": this.taxaComissaoCarregamento,
      "taxaIVAComissaoCarregamento": this.taxaIVAComissaoCarregamento,
      "taxaComissaoCompra": this.taxaComissaoCompra,
      "taxaIVAComissaoCompra": this.taxaIVAComissaoCompra,
      "exchangeBuyValue": this.exchangeBuyValue,
      "exchangeSellValue": this.exchangeSellValue
    };
  }
}
