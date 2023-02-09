class KatzScale {
  
  int patientConditionSelected;
  
  KatzScale({required this.patientConditionSelected});
   
  String showAbout() => "A escala clínica Frailty tem por objetivo classificar o grau de fragilidade e dependência do indivíduo. Sua pontuação varia de 1 a 9, em um crescente de fragilidade e dependência.";
    
  String? showPatientSituation() {
    switch (patientConditionSelected) {
      case 1:
        return "Muito ativo";
      case 2:
        return "Ativo";
      case 3:
        return "Regular";
      case 4:
        return "Vulnerável";
      case 5:
        return "Levemente Frágil";
      case 6:
        return "Moderadamente Frágil";
      case 7:
        return "Muito Frágil";
      case 8:
        return "Extremamente Frágil";
      case 9:
        return "Doente Terminal";
      default:
        return "Situation invalid";
    }
  }
  
  String showResultPoints() => patientConditionSelected == 1 ? "Ponto" : "Pontos";

  String showPatientDescription() {
    switch (patientConditionSelected) {
      case 1:
        return "Pessoas que estão robustas, ativas, com energia e motivadas. Essas pessoas normalmente se exercitam regularmente. Elas estão entre as mais ativas para a sua idade.";
      case 2:
        return "Pessoas que não apresentam nenhum sintoma ativo de doença, mas estão menos ativas que as da categoria 'Muito ativo'. Frequentemente se exercitam ou são muito ativas ocasionalmente (p. ex., em determinada época do ano).";
      case 3:
        return "Pessoas com problemas de saúde bem controlados, mas não se exercitam regularmente além da caminhada de rotina.";
      case 4:
        return "Apesar de não depender dos outros para ajuda diária, frequentemente os sintomas limitam as atividades. Uma queixa comum é a de sentir-se mais lento e/ou mais cansado ao longo do dia.";
      case 5:
        return "Essas pessoas frequentemente apresentam lentidão e precisam de ajuda para atividades instrumentais da vida diária (AIVD) mais complexas (finanças, transporte, trabalho doméstico pesado, medicações). Tipicamente, a fragilidade leve progressivamente prejudica as compras e passeios desacompanhados, preparo de refeições e tarefas domésticas.";
      case 6:
        return "Pessoas que precisam de ajuda em todas as atividades externas e na manutenção da casa. Em casa, frequentemente têm dificuldade com escadas e necessitam de ajuda no banho e podem necessitar de ajuda mínima (apoio próximo) para se vestirem.";
      case 7:
        return "Completamente dependentes para cuidados pessoais, por qualquer causa (física ou cognitiva). No entanto, são aparentemente estáveis e sem alto risco de morte (dentro de 6 meses).";
      case 8:
        return "Completamente dependentes, aproximando-se do fim da vida. São tipicamente incapazes de se recuperarem de uma doença leve.";
      case 9:  
        return "Aproximando-se do fim da vida. Esta categoria se aplica a pessoas com expectativa de vida inferior a 6 meses, sem outra evidência de fragilidade.";
      default:
        return "invalid";
    }
  }
    
  bool isPatientSituationValid() => patientConditionSelected >= 1 && patientConditionSelected <= 9;
    
  String showResultsPatientValid() => "About: \n${showAbout()} \n\nSituation: ${showPatientSituation()} \n\nResult:\n$patientConditionSelected ${showResultPoints()} \n${showPatientDescription()}";

  String verifyPatientSituation() => isPatientSituationValid() ? showResultsPatientValid() : "About: \n${showAbout()} \n\nSituation Invalid"; 

  @override  
  String toString() => "option: $patientConditionSelected";  
}

void main() {
  
  final katzScale = KatzScale(patientConditionSelected: 2);
  print(katzScale.verifyPatientSituation());  
}