class Exchange {
  double taxaComissaoCarregamento;
  double taxaIVAComissaoCarregamento;
  double taxaComissaoCompra;
  double taxaIVAComissaoCompra;
  double exchangeSellValue;
  double exchangeBuyValue;

  Exchange(
      {required this.taxaComissaoCarregamento,
      required this.taxaIVAComissaoCarregamento,
      required this.taxaComissaoCompra,
      required this.taxaIVAComissaoCompra,
      required this.exchangeBuyValue,
      required this.exchangeSellValue});
}
