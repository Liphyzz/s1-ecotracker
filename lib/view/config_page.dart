import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Configurações",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                const Text(
                  "Ativar modo escuro: ",
                  style: TextStyle(fontSize: 20),
                ),
                Switch(
                  value: false,
                  onChanged: (value) {
                    if (value) {
                      // Ativar modo escuro
                    } else {
                      // Desativar modo escuro
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
