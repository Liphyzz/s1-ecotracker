import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s1_ecotracker/controller/habito_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      //construção dos dash
      //escuta as mudanças de estado do controller
      body: Consumer<HabitoController>(
        builder: (context, controller, child) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                const Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                //lista de Card (informações do controller)
                _construtorCard(
                  titulo: "Hábitos concluídos",
                  value: controller.totalConcluidos.toString(),
                  icon: Icons.check_circle,
                  color: Colors.green,
                ),
                _construtorCard(
                  titulo: "Hábitos pendentes",
                  value: controller.totalPendentes.toString(),
                  icon: Icons.pending_actions,
                  color: Colors.yellow,
                ),
                _construtorCard(
                  titulo: "Pontuação",
                  value: controller.pontuacao.toString(),
                  icon: Icons.videogame_asset,
                  color: Colors.grey,
                ),
                _construtorCard(
                  titulo: "Nível",
                  value: controller.nivel.toString(),
                  icon: Icons.stairs,
                  color: Colors.blue,
                ),
                _construtorCard(
                  titulo: "Progresso Semanal",
                  value: controller.progressoSemanal.toString(),
                  icon: Icons.percent,
                  color: Colors.deepOrange,
                ),
                _construtorCard(
                  titulo: "Impacto Estimado",
                  value: controller.impactoEstimado.toString(),
                  icon: Icons.co2,
                  color: Colors.teal,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

//criar um widget para para facilitar a criação dos card
Widget _construtorCard({
  required String titulo,
  required String value,
  required IconData icon,
  required Color color,
}) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(12),
    ),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.15),
        child: Icon(icon, color: color),
      ),
      title: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: Text(
        value,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    ),
  );
}
