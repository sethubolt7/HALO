import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SelectUserRole()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset("assets/intro_page_bg/top_left.svg"),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/intro_page_bg/top_right.svg"),
            ),
            Align(
              alignment: Alignment.center,
                child: Text(
                  'HALO',
                  style: GoogleFonts.jua(
                    fontSize: 96,
                  ),
                ),
              ),
            Positioned(
              top: screenSize.height/1.8,
              left: screenSize.width/2.5,
                child: Text(
                  'One Care Solution',
                  style: GoogleFonts.jua(
                    fontSize: 24,
                  ),
                ),
              ),
            Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset("assets/intro_page_bg/bottom_right.svg"),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: SvgPicture.asset("assets/intro_page_bg/bottom_left.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
