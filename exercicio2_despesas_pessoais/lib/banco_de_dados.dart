import 'dart:math';

import 'objeto.dart';

List<Transacao> registrosdecompras = [
  Transacao(id: Random().nextDouble(), titulo: 'Frutas', valor: 54, data: DateTime.now().subtract(Duration(days: 1))),
  Transacao(id: Random().nextDouble(), titulo: 'Luz', valor: 350, data: DateTime.now().subtract(Duration(days: 2))),
  Transacao(id: Random().nextDouble(), titulo: 'Cesuca', valor: 448, data: DateTime.now().subtract(Duration(days: 3))),
  Transacao(id: Random().nextDouble(), titulo: 'Cinema', valor: 250, data: DateTime.now().subtract(Duration(days: 4))),
  Transacao(id: Random().nextDouble(), titulo: 'Mercado', valor: 150, data: DateTime.now().subtract(Duration(days: 5))),
  Transacao(id: Random().nextDouble(), titulo: 'Farmácia', valor: 77.5, data: DateTime.now().subtract(Duration(days: 6))),
];