import 'package:flutter/material.dart';
import 'package:mooshaf_app/interface/main_screen.dart';
import 'package:mooshaf_app/providers/interface_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => InterfaceProvider())
      ],
      child: const MaterialApp(
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
