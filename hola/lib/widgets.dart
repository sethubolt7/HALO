import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorHomePageLeftButton extends StatelessWidget {
  String displayText;

  DoctorHomePageLeftButton({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 30),
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFF8823D7),
                width: 10.0,
              ),
            ),
            child: Center(
              child: Text(
                displayText,
                style: GoogleFonts.jua(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DoctorHomePageRightButton extends StatelessWidget {
  String displayText;

  DoctorHomePageRightButton({super.key, required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFFD017B2),
                width: 10.0,
              ),
            ),
            child: Center(
              child: Text(
                displayText,
                style: GoogleFonts.jua(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
