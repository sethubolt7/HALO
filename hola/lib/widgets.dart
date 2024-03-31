import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hola/consultaiondetails.dart';
import 'package:hola/doctorhomepage.dart';
import 'package:hola/generalwarddetails.dart';
import 'package:hola/icupatientsdetails.dart';
import 'package:hola/labreportdetails.dart';
import 'package:hola/outpatientsdetails.dart';
import 'package:hola/widgets.dart';

class DoctorHomePageLeftButton extends StatefulWidget {
  Widget goto;
  String displayText;

  DoctorHomePageLeftButton(
      {super.key, required this.displayText, required this.goto});

  @override
  State<DoctorHomePageLeftButton> createState() =>
      _DoctorHomePageLeftButtonState();
}

class _DoctorHomePageLeftButtonState extends State<DoctorHomePageLeftButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 30),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => widget.goto,
                ),
              );
            },
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
                  widget.displayText,
                  style: GoogleFonts.jua(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DoctorHomePageRightButton extends StatefulWidget {
  String displayText;
  Widget goto;
  DoctorHomePageRightButton(
      {super.key, required this.displayText, required this.goto});

  @override
  State<DoctorHomePageRightButton> createState() =>
      _DoctorHomePageRightButtonState();
}

class _DoctorHomePageRightButtonState extends State<DoctorHomePageRightButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => widget.goto,
                ),
              );
            },
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
                  widget.displayText,
                  style: GoogleFonts.jua(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
