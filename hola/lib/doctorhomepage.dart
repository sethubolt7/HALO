import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hola/consultaiondetails.dart';
import 'package:hola/generalwarddetails.dart';
import 'package:hola/icupatientsdetails.dart';
import 'package:hola/labreportdetails.dart';
import 'package:hola/outpatientsdetails.dart';
import 'package:hola/widgets.dart';

class DoctorHomePage extends StatefulWidget {
  const DoctorHomePage({super.key});

  @override
  State<DoctorHomePage> createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF794D81),
        title: const Text(
          "ID: DOC-1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomLeft,
                child:
                    SvgPicture.asset("assets/other_page_bg/bottom_left.svg")),
            Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset("assets/other_page_bg/top_right.svg")),
            SingleChildScrollView(
              child: Column(
                children: [
                  DoctorHomePageRightButton(
                      displayText: 'GENERAL\nWARD DETAILS',
                      goto: const GeneralWardDetails()),
                  DoctorHomePageLeftButton(
                      displayText: 'ICU\nPATIENTS',
                      goto: const IcuPatientsDetails()),
                  DoctorHomePageRightButton(
                      displayText: 'LAB\nREPORT',
                      goto: const LabReportDetails()),
                  DoctorHomePageLeftButton(
                      displayText: 'OUT\nPATIENTS',
                      goto: const OutPatientsDetails()),
                  DoctorHomePageRightButton(
                      displayText: 'CONSULTATIONS',
                      goto: const ConsultationsDetails()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
