import 'package:exercicio2_despesas_pessoais/banco_de_dados.dart';
import 'package:flutter/material.dart';


class Listadetransacoes extends StatefulWidget {
 // final Transacao fontededados;
   const new (/* this.fontededados, */ {super.key});

  @override
  State<Listadetransacoes> createState() => _ListadetransacoesState();
}

class _ListadetransacoesState extends State<Listadetransacoes> {
  void deletartransacao(int ind){
    setState(() {
      registrosdecompras.removeWhere((i){
       return  i.id == registrosdecompras[ind].id;
      });
    });
  } 

  @override
  Widget build(BuildContext context) {
    double larguradatela = MediaQuery.of(context).size.height;
    return Container(height: larguradatela*0.5,
      margin: EdgeInsets.all(15),
      child: ListView.builder(
        itemCount: registrosdecompras.length,
        itemBuilder:(context,index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(registrosdecompras[index].valor.toString()),
              ),
              title: Text(registrosdecompras[index].titulo) ,
              subtitle: Text(registrosdecompras[index].data.toString()),
              trailing: IconButton(onPressed: (){deletartransacao(index);}, icon: Icon(Icons.delete,color: Colors.red,)),
            ),
          );
        } ,
      
      ));
  }
}