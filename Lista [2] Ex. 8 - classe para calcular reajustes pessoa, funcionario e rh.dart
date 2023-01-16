abstract class Person {
  
  String name;
  String birthDate;
  String gender;
  
  Person({required this.name, required this.birthDate, required this.gender});  
}

class Employee extends Person{
    
  String? id;
  double? currentWage;
  String? office;
  
  Employee({this.id, this.currentWage, this.office, required String name, required String birthDate, required String gender}): super(name: name, birthDate: birthDate, gender: gender);
}

class Rh {

  String? companyName;
  int? cnpj;
 
  Rh({this.companyName, this.cnpj});
    
  String? calculateSalaryIncrease({required Employee employee}) {
               
    double? percentageIncrease;
    double? valueIncrease;
    double? totalWage;


    if (employee.currentWage == null) {
      return null;
    }   
    if (employee.currentWage! < 280) {
      percentageIncrease = 20;
      valueIncrease = (percentageIncrease * employee.currentWage!) / 100;
      totalWage = valueIncrease + employee.currentWage!;
              
    } else if (employee.currentWage! >= 280 && employee.currentWage! <= 700) {
      percentageIncrease = 15;
      valueIncrease = (percentageIncrease * employee.currentWage!) / 100;
      totalWage = valueIncrease + employee.currentWage!;
      
    } else if (employee.currentWage! > 700 && employee.currentWage! <= 1500) {
      percentageIncrease = 10;
      valueIncrease = (percentageIncrease * employee.currentWage!) / 100;
      totalWage = valueIncrease + employee.currentWage!;        

    } else if (employee.currentWage! > 1500) {
      percentageIncrease = 5;
      valueIncrease = (percentageIncrease * employee.currentWage!) / 100;
      totalWage = valueIncrease + employee.currentWage!;

    } 
    return "Salário antes do ajuste: ${employee.currentWage} \nPercentual de aumento aplicado: $percentageIncrease% \nValor do aumento: $valueIncrease \nNovo salário após o aumento:$totalWage";
  }  
}

void main() {
    
  final employee = Employee(id: "0002", currentWage: 100, office: "Digitador", name: "Giovane", birthDate: "12/06/2006", gender: "masc");
  final rh = Rh(cnpj: 230879937, companyName: "Giovane digitador");
  
//   Testes
//    final employee = Employee(id: "0004", currentWage: 700, office: "Recepcionista", name: "Mariah", birthDate: "12/06/1987", sex: "fem");
//    final rh = Rh(cnpj: 264877447, companyName: "Mariah Bijuterias");
  
//   final employee = Employee(id: "0001", currentWage: 1500, office: "TI - Estágiário", name: "pedro", birthDate: "12/06/2005", sex: "fem");
//   final rh = Rh(cnpj: 230877447, companyName: "Lojinha do Pedro");
  
//    final employee = Employee(id: "0005", currentWage: 1501, office: "Vendedora", name: "Lena", birthDate: "12/06/1987", sex: "fem");
//    final rh = Rh(cnpj: 230242447, companyName: "Lena's Store");
  
  print(rh.calculateSalaryIncrease(employee: employee));
} 