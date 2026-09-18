import 'package:exercicio2_despesas_pessoais/formulario.dart';
import 'package:exercicio2_despesas_pessoais/grafico.dart';
import 'package:exercicio2_despesas_pessoais/listadetransacoes.dart';
import 'package:exercicio2_despesas_pessoais/objeto.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'banco_de_dados.dart';
import 'dart:math';


void  main() async {
  runApp(MeuApp());
 await  initializeDateFormatting ('Pt_BR')  ;}




class MeuApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaInicial() ,
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const new({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}


class _PaginaInicialState extends State<PaginaInicial> {
   void deletar(int ind){
    setState(() {
      registrosdecompras.removeWhere((i){
       return  i.id == registrosdecompras[ind].id;
      });
    });
  } 

  void salvar(String titulo, String valor ,DateTime data){
    if (titulo =="" || valor ==""){return;}
   
    setState(() {
      Transacao dadosparasalvar = Transacao(id: Random().nextDouble(), titulo: titulo, valor: double.parse(valor), data: data);
      registrosdecompras.add(dadosparasalvar);
      Navigator.of(context).pop();
    });
  }

  void abrirformulario(){

    setState(() {
      showModalBottomSheet(constraints: BoxConstraints(maxHeight:  MediaQuery.of(context).size.height*0.3), context: context, builder: (context) {
        
        return Formulario(salvar);
      },);
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Despesas Pessoais",style: TextStyle(fontSize: 25),),backgroundColor: Colors.purple.shade200,foregroundColor: Colors.white,),
      body: SizedBox(child: Column(children: [
        Grafico(),
        Listadetransacoes(deletar)
      ],),),
      // ignore: sort_child_properties_last
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: abrirformulario,) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}