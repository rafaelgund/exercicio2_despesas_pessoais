import 'package:exercicio2_despesas_pessoais/banco_de_dados.dart';
import 'package:exercicio2_despesas_pessoais/barradografico.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Grafico extends StatelessWidget {
  const new({super.key});

 List<Map<String,Object>> get fontesparaabarradografico {
  return List.generate(7, (index) {
    DateTime dadosdodia = DateTime.now().subtract(Duration(days: index));
    double valordodia =0;
    double valordasemana =0;

    for (int i =0 ; i< registrosdecompras.length; i++){
    valordasemana+= registrosdecompras[i].valor;  
    bool dia = dadosdodia.day == registrosdecompras[i].data.day;
    bool mes = dadosdodia.month == registrosdecompras[i].data.month;
    bool ano = dadosdodia.year == registrosdecompras[i].data.year;

    if( dia && mes && ano){
      valordodia+=registrosdecompras[i].valor;
    }
    }
    return {'valor' : valordodia , 'percentual' : valordodia/valordasemana , 'letra' : DateFormat.E('pt_br').format(dadosdodia)[0].toUpperCase()};
  },).reversed.toList();
 }

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(10), child: 
    Card(elevation: 4,child: 
      Row( children: [...fontesparaabarradografico.map((i)=>Barradografico(
         i['valor'] as double ,  i['percentual'] as double ,i["letra"].toString() ))],
    ),));
     
    
  }
}