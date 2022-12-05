class Store {

// método para calcular valor total da parcela
  double calculateValueParcel(double value, {double amountProduct = 1, double amountParcel = 1, int? fees}) {

    // variável traz valor x quantidade de produtos (calcula da compra)
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
  
  String? parcelTotal(double value, {amountParcel = 1, amountProduct = 1}) {
    
    // váriavel que vai receber o valor de cada parcela
    double valueParcel;
    
    // se o valor da parcela for maior que 0 e igual menor que 4
      if (amountParcel! > 0 && amountParcel <= 4) {

      // a variavel value parcel recebe o metodo que calcula o valor das parcelas criado a cima enviando os 
      // parametros (valor, quantidade de parcelas e quantidade de produtos)
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct);

      } else if (amountParcel == 5) {
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 1);
      } else if (amountParcel == 6) {
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 2); 
      } else if (amountParcel == 7) {
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 3);  
      } else if (amountParcel == 8) {
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 5);   
      } else if(amountParcel == 9) {
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 8);    
      } else if (amountParcel == 10) {
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 13);   
      } else if (amountParcel == 11) {
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 14);   
      } else if (amountParcel == 12) {
        valueParcel = calculateValueParcel(value, amountParcel: amountParcel, amountProduct: amountProduct, fees: 15);   
      } else {
        return null;
      }
    return showMessageParcel(valueParcel, amountParcel);
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
