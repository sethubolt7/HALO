import 'package:flutter/material.dart';
import 'package:hola/selectuserrole.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SelectUserRole()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Image.asset(
          "assets/intro_page_bg.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ),
    );
  }
}
