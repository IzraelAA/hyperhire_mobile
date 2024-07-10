import 'package:flutter/material.dart';
import 'package:hyperhire/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:hyperhire/features/dashboard/presentation/pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyperhire',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardPage(),
    );
  }
}
