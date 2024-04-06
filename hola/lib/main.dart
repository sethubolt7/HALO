import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hola/intropage.dart';

void main() async {
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      home: IntroPage(),
    ),
  );
}
