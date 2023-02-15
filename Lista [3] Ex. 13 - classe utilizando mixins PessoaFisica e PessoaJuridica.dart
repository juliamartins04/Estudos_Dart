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

  // cpf chega sem o digito verificador
  // transforma o primeiro caracter em um inteiro decimal
  // 
  // resumo ... faz o calculo e retorna um digito verificador
  
  // Calculando o digito verificador
  int _verifyDigit(String cpf) {
    List<int> numbers =
    cpf.split("").map((number) => int.parse(number)).toList();

    int modulus = numbers.length + 1;

    List<int> multiplied = [];

    // modulo - index 10,9,8,7,6,5,4,3,2
    // primeiro digito por 10, segundo por 9....
    for (var i = 0; i < numbers.length; i++) {
      multiplied.add(numbers[i] * (modulus - i));
    }

    // pega todas as posições do multiply e soma todas elas
    // vai percorrer tudo e reduzir, depois pegar o resto da divisão por 11
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
    // criação do regex, percorrendo todos os caracteres sem ponto e hífen
    RegExp regExp = RegExp(maskRegExp);
    // Remove tudo que for dígitos de uma string
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
  bool isCPFValid(String? cpf) {
    
    // deve ficar como parametro
    bool stripBeforeValidation = true;
    
    // Chama os métodos de verificação
    if (validateIsCPFNotEmpty(cpf) || validateIsCPFContainsLenght(cpf) || validateIsCPFNotValidNumberNegative(cpf)) {
      return false;
    }
    
    // Chama o método de verificação da lista de cpfs não válidos
    if (listCPFNotValid.contains(cpf)) {
      return false;
    }
    
    // Retira pontos e hífens para a validação
    if (stripBeforeValidation) {
      cpf = unmask(cpf!);
    }
    
    // remove digitos verificadores informados no cpf
    String numbers = cpf.substring(0, 9);
    
    // pega o digito verificador e atribui ao cpf
    numbers += _verifyDigit(numbers).toString();
    // calcula segundo digito verificador e atribui ao metdo verifyDigit
    numbers += _verifyDigit(numbers).toString();

    // pega o cpf que calculou, pega numero total de posições 
    // pega os dis ultimos digitos do cpf calculado e compara com os dois ultimos digitos do cpf informado
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
  // calculando**
  int calculateCheckerDigit(String cnpj) {
    int index = 2;
    List<int> reversedList = cnpj.split("").map((listItem) => int.parse(listItem)).toList().reversed.toList();
    int sum = 0;
  
    for (var number in reversedList) { 
      sum += number * index;
       index = (index == 9 ? 2 : index + 1);
    }
    
    int mob = sum % 11;
    return (mob < 2 ? 0 : 11 - mob);
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
 

  bool isCNPJValid(String? cnpj, [stripBeforeValidation = true]) {
    
    // vai validar o formato que a informação chegou
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
      numbers += calculateCheckerDigit(numbers).toString();
      numbers += calculateCheckerDigit(numbers).toString();

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
  
  final List<Client> clients = mock.map((client) => Client.fromMap(client)).toList();
  
  for (var client in clients) {
    print(client);
  }
}