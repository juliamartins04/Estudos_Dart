class CalculatorKarnofsky {
  
  int optionSelectedKarnofsky;
  
  CalculatorKarnofsky({required this.optionSelectedKarnofsky});
  
  List<int> listResultsKarnofsky = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
  
  String showIndexPerformanceKarnofsky() {
    int? resultPerformanceKarnofsky;
    switch (optionSelectedKarnofsky) {
      case 1:
        resultPerformanceKarnofsky = listResultsKarnofsky[0];
        break;
      case 2:
        resultPerformanceKarnofsky = listResultsKarnofsky[1];
        break;
      case 3:
        resultPerformanceKarnofsky = listResultsKarnofsky[2];
        break;
      case 4:
        resultPerformanceKarnofsky = listResultsKarnofsky[3];
        break;
      case 5:
        resultPerformanceKarnofsky = listResultsKarnofsky[4];
        break;
      case 6:
        resultPerformanceKarnofsky = listResultsKarnofsky[5];
        break;
      case 7:
        resultPerformanceKarnofsky = listResultsKarnofsky[6];
        break;
      case 8:
        resultPerformanceKarnofsky = listResultsKarnofsky[7];
        break;
      case 9:
        resultPerformanceKarnofsky = listResultsKarnofsky[8];
        break;
      case 10:
        resultPerformanceKarnofsky = listResultsKarnofsky[9];
        break;
      default:
        resultPerformanceKarnofsky = null;
    }
     return resultPerformanceKarnofsky == null ? "Valor inválido" : "O índice da escala de performance de Karnofsky é $resultPerformanceKarnofsky%";
//     return "O índice da escala de performance de Karnofsky é ${resultCalculate ?? "Inválido"}";
  }
  
  @override  
  String toString() => "numberCheckBoxKarnofsky: $optionSelectedKarnofsky";  
}

void main() {
 
  final calculatorKarnofsky = CalculatorKarnofsky(optionSelectedKarnofsky: -8);
  print(calculatorKarnofsky.showIndexPerformanceKarnofsky()); 
}