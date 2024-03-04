import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/features/cadastro/cadastro_page.dart';
import 'package:ofly_tech_test/features/card/card_page.dart';
import 'package:ofly_tech_test/features/history/history_page.dart';
import 'package:ofly_tech_test/features/home/home_page.dart';
import 'package:ofly_tech_test/features/login_page.dart';
import 'package:ofly_tech_test/features/travels/travels_page.dart';
import 'package:ofly_tech_test/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
