import 'package:flutter/material.dart';
import 'package:s1_ecotracker/model/habito.dart';

class HabitoController extends ChangeNotifier {
  List<Habito> habitosPendentes = [];
  List<Habito> habitosConcluidos = [];

  bool modoEscuro = false;

  // Método para concluir um habito (tira da lista de pendente e adiciona na de concluídos)
  void concluirHabito(Habito habito) {
    habitosPendentes.remove(habito);
    habitosConcluidos.add(habito);
    notifyListeners();
  }

  // Método para alternar entre o modo claro e escuro
  void alternarTema() {
    modoEscuro = !modoEscuro;
    notifyListeners();
  }

  // --------- DASHBOARD --------- //

  int get totalConcluidos => habitosConcluidos.length; // atribui o valor do tamanho da lista habitosConcluidos (pega da tela de hábitos) à variável totalConcluidos

  int get totalPendentes => habitosPendentes.length; // atribui o valor do tamanho da lista habitosPendentes (pega da tela de hábitos) à variável totalPendentes

  int get pontuacao => totalConcluidos * 10;

  int get nivel => (pontuacao ~/ 50);

  double get progressoSemanal {
    int total = totalConcluidos + totalPendentes;
    double progresso = totalConcluidos / total;
    if (total == 0) return 0;
    return progresso;
  }

  String get impactoEstimado {
    return "-$totalConcluidos% de CO² na atmosfera";
  }
}