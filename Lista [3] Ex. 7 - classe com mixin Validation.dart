mixin Validation {
      
  bool validateEmailIsReal({required String emailAdress}) => emailAdress.contains("@");
  bool validateFinalEmail({required String emailAdress}) => emailAdress.contains(".com");
}

class Email with Validation {  

  String emailAdress;
  
  Email({required this.emailAdress});
  
  String showResults() => validateEmailIsReal(emailAdress: emailAdress) && validateFinalEmail(emailAdress: emailAdress) ? "Email válido" : "Email inválido";
   
  @override
  String toString() => "";  
}

void main() { 
  
  final email = Email(emailAdress: "ju@gmail.com");
  print(email);  
}