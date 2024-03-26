import 'package:flutter/material.dart';

class SelectUserRole extends StatefulWidget {
  const SelectUserRole({super.key});

  @override
  State<SelectUserRole> createState() => _SelectUserRoleState();
}

class _SelectUserRoleState extends State<SelectUserRole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/intro_page_bg.png",
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child:Column(
                children: [TextField(), TextField()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
