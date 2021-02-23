class CalcMethod {

  double ont; //Orçamento total
  double ont_2;//Orçamento gasto
  double tt; //Tempo total
  double tt_2; //Tempo cumprido

  double porcentagem(){
    return (tt_2*100)/tt*1;
  }

  double valorPlanejado(){
    return ont *((tt*100/tt)/100);
  }

  double valorAgregado(){
    return ont * (porcentagem()/100);
  }

  double variacaodePrazo(){
    return valorAgregado() - valorPlanejado();
  }

  double variacaodeCusto(){
    return valorAgregado() - ont_2;
  }

  double indicedeCusto(){
    return valorAgregado()/ont_2;
  }

  double indicedePrazo(){
    return valorAgregado() / valorPlanejado();
  }

  String prazo(){
    if(indicedeCusto() < 1) {
      return
      'ACIMA DO CUSTO';
    }
    else{
      return
      'ABAIXO DO CUSTO';
    }
  }

  String custo(){
    if(indicedePrazo() < 1) {
      return
        'ATRASADO';
    }
    else if(indicedePrazo() == 1){
      return
      'CONFORME PLANEJADO';
    }
    else{
      return
          "ADIANTADO";
      }
  }
}