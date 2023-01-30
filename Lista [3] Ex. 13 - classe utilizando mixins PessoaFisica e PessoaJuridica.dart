mixin PhysicalPerson {

  List<String> listCPFNotValid = [
    "00000000000",
    "11111111111",
    "22222222222",
    "33333333333",
    "44444444444",
    "55555555555",
    "66666666666",
    "77777777777",
    "88888888888",
    "99999999999",
    "12345678909"
  ];
  
  static const maskRegExp = r'[^\d]';

  int _verifyDigit(String cpf) {
    List<int> numbers =
    cpf.split("").map((number) => int.parse(number)).toList();

    int modulus = numbers.length + 1;

    List<int> multiplied = [];

    for (var i = 0; i < numbers.length; i++) {
      multiplied.add(numbers[i] * (modulus - i));
    }

    int mod = multiplied.reduce((buffer, number) => buffer + number) % 11;

    return (mod < 2 ? 0 : 11 - mod);
  }

  // mask
  String format(String cpf) {
    RegExp regExp = RegExp(r'^(\d{3})(\d{3})(\d{3})(\d{2})$');

    return unmask(cpf).replaceAllMapped (
        regExp, (Match m) => "${m[1]}.${m[2]}.${m[3]}-${m[4]}");
  }
    
  // Desmascara com regex
  String unmask(String cpf) {
    RegExp regExp = RegExp(maskRegExp);
    // Retorna substituindo
    return cpf.replaceAll(regExp, "");
  }
 
  // Verifica se o cpf está nulo ou vazio
  bool validateIsCPFNotEmpty(cpf) => cpf == null || cpf.isEmpty;
  // Verifica se o CPF contém 11 dpigitos
  bool validateIsCPFContainsLenght(cpf) => cpf.length != 11;
  // Verifica se o CPF está na lista de cpfs não válidos
  bool validateIsCPFNotValidNumberNegative(cpf) => listCPFNotValid.contains(cpf);
 
  // Método validando CPF
  dynamic isCPFValid(String? cpf) {
    
    bool stripBeforeValidation = true;
    
    // Chama os métodos de verificação
    if (validateIsCPFNotEmpty(cpf) || validateIsCPFContainsLenght(cpf) || validateIsCPFNotValidNumberNegative(cpf)) {
      return false;
    }
    
    // Chama o método de verificação da lista de cpfs não válidos
    if (listCPFNotValid.contains(cpf)) {
      return false;
    }
    
    // Retira pontos  hífens para a validação
    if (stripBeforeValidation) {
      cpf = unmask(cpf!);
    }

    String numbers = cpf.substring(0, 9);
    numbers += _verifyDigit(numbers).toString();
    numbers += _verifyDigit(numbers).toString();

    return numbers.substring(numbers.length - 2) ==
        cpf.substring(cpf.length - 2);
  }
}

mixin LegalPerson {

 static const stripRegex = r'[^\d]';
  
 List<String> listOfCNPJNotValid = [
    "00000000000000",
    "11111111111111",
    "22222222222222",
    "33333333333333",
    "44444444444444",
    "55555555555555",
    "66666666666666",
    "77777777777777",
    "88888888888888",
    "99999999999999"
  ];
  
  // Método que mapeia o dígitoverificador
  int mapCheckerDigit(String cnpj) {
    int index = 2;
    List<int> reversedList = cnpj.split("").map((listItem) => int.parse(listItem)).toList().reversed.toList();
    int sum = 0;

    
//     for (var reversedListItem in reversedList) {
//     // Rest of your code
//     }
    reversedList.forEach((number) {
      sum += number * index;
      index = (index == 9 ? 2 : index + 1);
    });
    int mod = sum % 11;

    return (mod < 2 ? 0 : 11 - mod);
  }
  
  String strip(String? cnpj) {
    RegExp regex = RegExp(stripRegex);

    cnpj = cnpj ?? cnpj;
    return cnpj!.replaceAll(regex, "");
  }
    
// Formata com o uso do regexp
  String format(String cnpj) {
    RegExp regExp = RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})$');

    return strip(cnpj).replaceAllMapped(
        regExp, (Match m) => "${m[1]}.${m[2]}.${m[3]}/${m[4]}-${m[5]}");
  }
  
  // Verifica se está vazio ou nulo
  bool isCNPJNotEmpty(cnpj) => cnpj == null || cnpj.isEmpty;
  // Verifica se contem o tamanho necessário
  bool isCNPJContainsLenght(cnpj) => cnpj.length != 14;
  // Verifica se o numero n é negativo
  bool isCNPJNotValidNumberNegative(cnpj) => listOfCNPJNotValid.contains(cnpj);
 
  dynamic isCNPJValid(String? cnpj, [stripBeforeValidation = true]) {
    
    if (stripBeforeValidation) {
      cnpj = strip(cnpj);
    }

    if (cnpj == null || cnpj.isEmpty) {
      return false;
    }
    
    if (isCNPJNotEmpty(cnpj) || isCNPJContainsLenght(cnpj) || isCNPJNotValidNumberNegative(cnpj)) {
      return false;
    }

    if (listOfCNPJNotValid.contains(cnpj)) {
      return false;
    }

    String numbers = cnpj.substring(0, 12);
      numbers += mapCheckerDigit(numbers).toString();
      numbers += mapCheckerDigit(numbers).toString();

      return numbers.substring(numbers.length - 2) ==
          cnpj.substring(cnpj.length - 2);
  }  
}

class Client with PhysicalPerson, LegalPerson {
  
  String name;
  int type;
  String document;
  
  Client({required this.name, required this.type, required this.document});
  
  factory Client.fromMap(Map<String, dynamic>map) =>
    Client (
      name: map['name'],
      type: map['type'],
      document: map['document']   
    );
    
   String? validateDocument(String document, int type) {
     switch (type) {
       case 1:
         if (isCPFValid(document) != false) {
           return "CPF valid";
         } else {
           return "CPF not válid";
         }
       case 2:
         if (isCNPJValid(document)) {
           return "CNPJ valid";
         } else {
           return "CNPJ not valid";
         }
       default:
         return "Type not valid";
     }
   }
  
  @override
  String toString() => "Name: $name \nType: $type \nDocument $document \n${validateDocument(document, type)} \n";

}

void main() {
 
  const mock = [{'name': 'júlia', 'type': 1, 'document': '85396958049'},
               {'name': 'lais', 'type': 2, 'document': '11.129.847/0001-97'},
               {'name': 'raj', 'type': 1, 'document': '85278302739'},
               {'name': 'julia', 'type': 2, 'document': '11.129.837/0001-95'},
               {'name': 'welinton', 'type': 1, 'document': '85396958049'},
               {'name': 'thiago', 'type': 2, 'document': '11129847000197'}];
  
  final List<Client> clients = mock.map((index) => Client.fromMap(index)).toList();
  
  for (var client in clients) {
    print(client);
  }
}