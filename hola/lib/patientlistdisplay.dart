import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hola/widgets.dart';

class PatientListDisplay extends StatefulWidget {
  Widget selectedPage;

  PatientListDisplay({super.key, required this.selectedPage});

  @override
  State<PatientListDisplay> createState() => _PatientListDisplayState();
}

class _PatientListDisplayState extends State<PatientListDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 255, 255, 255), //const Color(0xFF794D81),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context) => widget.selectedPage));
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text(
          "ICU PATIENTS",
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomButton(goto: widget.selectedPage, text: "Patient1",width: 400,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
