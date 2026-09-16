import 'package:flutter/material.dart';

class Barradografico extends StatelessWidget {
  final double valordia ;
  final double percentualdasemana;
  final String letradia;
  const new(this.valordia,this.percentualdasemana,this.letradia, { super.key});

  @override
  Widget build(BuildContext context) {
    double larguradatela = MediaQuery.of(context).size.height;
    return SizedBox(height: larguradatela*0.22,
      child: LayoutBuilder( builder:(context, constraints) {
        return Column(
          children: [
            SizedBox( height: constraints.maxHeight*0.15, child: FittedBox( child: Text(valordia.toString())),),
            SizedBox(height: constraints.maxHeight*0.05),
            SizedBox(height: constraints.maxHeight*0.6,
            child: Stack(
              alignment: AlignmentGeometry.bottomEnd,
              children: [
                        Container(width: 10, decoration: BoxDecoration(color: Colors.grey.shade300, border: Border.all(color: Colors.grey.shade400 )),),
                        FractionallySizedBox( heightFactor: percentualdasemana, child: 
                          Container(width: 10, decoration: BoxDecoration(color: Colors.purple.shade300, border: Border.all(color: Colors.grey.shade400 )),),),],
            ),),
            SizedBox(height: constraints.maxHeight*0.05),
            SizedBox(height: constraints.maxHeight*0.15, child: Text(letradia),),
          ],
        );
      },),
    );
  }
}