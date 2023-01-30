mixin Validation {
  final regexEmail = RegExp("[a-z]{2,15}@{1}[a-z]{2,9}.com");  
}

class Email with Validation {  
  String emailAdress; 
  
  Email({required this.emailAdress});
  
  String validateEmail() => regexEmail.hasMatch(emailAdress) == true ? "Email válido!" : "Email inválido!";
  
  @override
  String toString() => validateEmail();  
}

void main() { 
  
  final email = Email(emailAdress: "ju@gmail.com");
  print(email); 
}