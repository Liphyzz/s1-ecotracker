import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s1_ecotracker/view/config_page.dart';

// Provider do tema
class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = false;

  void toggleTheme(bool value) {
    isDarkMode = value;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.light,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      themeMode: themeProvider.isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,

      home: const ConfigPage(),
    );
  }
}