import 'package:donut_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove this line to disable debug mode banner
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.pink, //cambia el color del indicador de los TABs
        )
      ),
      home: const HomePage(),
    );
  }
}

