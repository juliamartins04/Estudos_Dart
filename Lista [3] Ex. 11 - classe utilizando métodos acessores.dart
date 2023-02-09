import 'dart:math' as math;

class ImcCalculator {

  double? _weight;
  double? _height;
  int? _age;
  
  // Implementar construtor para poder tornar os métodos não nulos

  // Construtor não nomeado //
  // Construtor privado //

  double get weight => _weight ?? 0.0;
  set weight(double weight) => _weight = weight;

  double get height => _height ?? 0.0;
  set height(double height) => _height = height;

  int get age => _age ?? 0;
  set age(int age) => _age = age;

  double calculateIMC() => weight / math.pow(height, 2);

  String showResultsIMCPerson() {
    String conditionPerson;
    double resultCalculateIMC = calculateIMC();
    
    if (age >= 20 && age <= 60) {
      if (resultCalculateIMC < 18.5) {
        conditionPerson = "Baixo peso";
      } else if (resultCalculateIMC >= 18.5 && resultCalculateIMC < 25) {
        conditionPerson = "Peso normal";
      } else if (resultCalculateIMC >= 25 && resultCalculateIMC < 30) {
        conditionPerson = "Sobrepeso";
      } else {
        conditionPerson = "Obesidade1";
      }
    } else if (age > 60) {
      if (resultCalculateIMC < 22) {
        conditionPerson = "Baixo peso";
      } else if (resultCalculateIMC >= 22 && resultCalculateIMC < 27) {
        conditionPerson = "Peso normal";
      } else if (resultCalculateIMC >= 29 && resultCalculateIMC < 30) {
        conditionPerson = "Sobrepeso";
      }
      conditionPerson = "Obesidade";
    } else {
      return "Sua idade não é válida";
    }
    return "O resultado do seu imc é: $conditionPerson";
  }

  @override
  String toString() => "Weight: $weight, height: $height, age: $age";
}

void main() {
  final calculator = ImcCalculator();

  calculator.age = 21;
  calculator.height = 1.62;
  calculator.weight = 60;
  print(calculator.showResultsIMCPerson());
}