import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Formulario extends StatefulWidget {
   final  Function(String titulo, String valor ,DateTime data) recebesalvar;
  
   const Formulario(this.recebesalvar, {super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {

    
  TextEditingController textodoitem  =  TextEditingController();

  TextEditingController textodovalor  =  TextEditingController();

  DateTime dataescolhida= DateTime.now() ;
  void motrardatepicker (){
      showDatePicker(context: context,
       initialDate: DateTime.now(),
        lastDate:DateTime(2027) ,
        firstDate:DateTime(2026)).then((valor) {

                return setState(() {

          if (valor == null){
            return ;
         
            
                }
           dataescolhida = valor;
    });


        },);
  }

  @override
  Widget build(BuildContext context) {
  
    return 
    Container(margin: EdgeInsets.all(10), child: Column(children: [
      TextField(controller: textodoitem, decoration: InputDecoration(labelText: "titulo"),),
      TextField(controller: textodovalor, decoration: InputDecoration(labelText: "Valor"),),
     
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text( 'Data Selecionada  ${DateFormat('dd MMM yyy', 'Pt_BR' ).format(dataescolhida)}'),
          TextButton(style: TextButton.styleFrom(backgroundColor: Colors.purple.shade100), onPressed:(){ return motrardatepicker();}, child: Text("Selecionar Data"))
          ],
        
          ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: ElevatedButton(onPressed: 
        (){widget.recebesalvar(textodoitem.text, textodovalor.text,dataescolhida);}, 
        child: Text('Salvar')),
      )

    ],),)
    
    
    
    
    
    
    ;
  }
}

