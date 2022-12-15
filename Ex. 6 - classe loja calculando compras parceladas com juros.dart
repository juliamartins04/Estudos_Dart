class Store {

  // metodo para calcular valor total da parcela
  double calculateValueParcel(double value, {double amountProduct = 1, double amountParcel = 1, int? fees}) {

    // variavel traz valor x quantidade de produtos (calcula da compra)
    double total = value * amountProduct;
    
    if (fees != null) {
      // retorna valor da parcela ja considerando o juros
      return (total + (total * fees / 100)) / amountParcel;
    }
      return total / amountParcel;
  }

  // Retorna a mensagem principal com a quantidade de parcelas X o valor total de cada parcela
  String showMessageParcel(double valueParcel, double amountParcel) {
    return "$amountParcel x $valueParcel";
  }
  
  String parcelTotal(double value, {amountParcel = 1, amountProduct = 1}) {  
    // variavel que vai receber o valor de cada parcela
    double? valueParcel;   
      // se o valor da parcela for maior que 0 e igual menor que 4
    if (amountParcel! > 0 && amountParcel <= 4) {
      // a variavel value parcel recebe o metodo que calcula o valor das parcelas criado a cima enviando os 
      // parametros (valor, quantidade de parcelas e quantidade de produtos)
      return valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct);

      switch (amountParcel) {
        case 5:
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 1);
        break;
      case 6:
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 2);
        break;
      case 7:
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 3);  
        break;
      case 8:
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 5); 
        break;
      case 9:
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 8);
        break;
      case 10:
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 13);
        break;
      case 11:
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 14);
        break;
      case 12: 
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 15);  
        break;
      }
    }
      return showMessageParcel(valueParcel!, amountParcel);
  }
}

void main() {
  final store = Store();

//  print(store.parcelTotal(7));

  print(store.parcelTotal(10, amountParcel: 2, amountProduct: 2));

    // Testes
//     print(store.parcelTotal(14, amountParcel: 5, amountProduct: 2));
//     print(store.parcelTotal(897, amountProduct: 2));
//     print(store.parcelTotal(1000, amountParcel: 2));
//     print(store.parcelTotal(10, amountParcel: 15));

}
