mixin Validation {
      
  bool verifyEmail({required String emailAdress}) => emailAdress.contains("@");
  bool verifyFinalEmail({required String emailAdress}) => emailAdress.contains(".com");
}

class Email with Validation{  

  String emailAdress;
  
  Email({required this.emailAdress});
  
  String validateEmail() => verifyEmail(emailAdress: emailAdress) && verifyFinalEmail(emailAdress: emailAdress) ? "Email válido" : "Email inválido";
   
  @override
  String toString() => validateEmail();  
}

void main(){ 
  
  final email = Email(emailAdress: "ju@gmail.com");
  print(email);  
}