import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s1_ecotracker/controller/habito_controller.dart';
import 'package:s1_ecotracker/view/dashboard_page.dart';

class TarefaPage extends StatefulWidget {
  const TarefaPage({super.key});

  @override
  State<TarefaPage> createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  @override
  Widget build(BuildContext context) {
    //Controller => controller opera a interface do usuário e enviar a solicitação para o Model
    final tarefaController = Provider.of<HabitoController>(context);

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.green,
        title: Row(
          children: [
            Icon(Icons.energy_savings_leaf, size: 70, color: Colors.black),
            const Text(
              'EcoTracker',
              style: TextStyle(
                fontSize: 65,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            const Text(
              "Configurações",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            
            //listar as tarefas adicionadas
            Expanded(
              
            ),
          ],
        ),
      ),
    );
  }
}
