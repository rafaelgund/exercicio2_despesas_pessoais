import 'package:exercicio2_despesas_pessoais/listadetransacoes.dart';
import 'package:flutter/material.dart';


void main()=>runApp(MeuApp());




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
      appBar: AppBar(title: Text("Despesas Pessoais"),),
      body: SizedBox(child: Column(children: [
        Listadetransacoes()
      ],),),
    );
  }
}