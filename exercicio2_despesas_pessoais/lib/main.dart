import 'package:exercicio2_despesas_pessoais/grafico.dart';
import 'package:exercicio2_despesas_pessoais/listadetransacoes.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';



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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Despesas Pessoais",style: TextStyle(fontSize: 25),),backgroundColor: Colors.purple.shade200,foregroundColor: Colors.white,),
      body: SizedBox(child: Column(children: [
        Grafico(),
        Listadetransacoes()
      ],),),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: (){},) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}