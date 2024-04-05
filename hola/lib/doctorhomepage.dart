import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hola/consultaiondetails.dart';
import 'package:hola/generalwarddetails.dart';
import 'package:hola/icupatientsdetails.dart';
import 'package:hola/labreportdetails.dart';
import 'package:hola/outpatientsdetails.dart';
import 'package:hola/widgets.dart';
import 'package:hola/patientlistdisplay.dart';

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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),//const Color(0xFF794D81),
        title: const Center(
          child: Text(
            "DOCTOR ID: DOC-1",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: const [Icon(Icons.logout)],
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
                      from: PatientListDisplay(selectedPage: const GeneralWardDetails(),),
                      goto: const GeneralWardDetails()),
                  DoctorHomePageLeftButton(
                      displayText: 'ICU\nPATIENTS',
                      from: PatientListDisplay(selectedPage: const IcuPatientsDetails(),),
                      goto: const IcuPatientsDetails()),
                  DoctorHomePageRightButton(
                      displayText: 'LAB\nREPORT',
                      from: PatientListDisplay(selectedPage: const LabReportDetails(),),
                      goto: const LabReportDetails()),
                  DoctorHomePageLeftButton(
                      displayText: 'OUT\nPATIENTS',
                      from: PatientListDisplay(selectedPage: const OutPatientsDetails(),),
                      goto: const OutPatientsDetails()),
                  DoctorHomePageRightButton(
                      displayText: 'CONSULTATIONS',
                      from: PatientListDisplay(selectedPage: const ConsultationsDetails(),),
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
