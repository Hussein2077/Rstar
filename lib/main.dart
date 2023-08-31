import 'package:flutter/material.dart';
import 'package:saulefna/presentation/screens/spalsh_screen.dart';
import 'package:saulefna/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
fontFamily: 'BalooBhaijaan2',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.splash,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
