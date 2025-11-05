import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaki_app/provider/shoe_provider.dart';
import 'package:sneaki_app/screens/login_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ShoeProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'OpenSans'),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
