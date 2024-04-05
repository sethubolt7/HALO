import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorHomePageLeftButton extends StatefulWidget {
  Widget goto;
  Widget from;
  String displayText;

  DoctorHomePageLeftButton(
      {super.key,
      required this.displayText,
      required this.goto,
      required this.from});

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
                  builder: (context) => widget.from,
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
  Widget from;

  DoctorHomePageRightButton(
      {super.key,
      required this.displayText,
      required this.goto,
      required this.from});

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
                  builder: (context) => widget.from,
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

class CustomButton extends StatefulWidget {
  Widget goto;
  double pad;
  int color;
  double height;
  double width;
  String text;

  CustomButton(
      {super.key,
      required this.goto,
      this.pad = 10.0,
      this.color = 0xFF8823D7,
      this.height = 100,
      this.width = 200,
      required this.text});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => widget.goto,
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(widget.pad),
        child: Center(
          child: Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Color(widget.color),
                width: 10.0,
              ),
            ),
            child: Center(
              child: Text(
                widget.text,
                style: GoogleFonts.jua(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PatientsParameters extends StatefulWidget {
  String value;
  String text;
  String unit;
  PatientsParameters(
      {super.key, required this.value, required this.unit, required this.text});

  @override
  State<PatientsParameters> createState() => _PatientsParametersState();
}

class _PatientsParametersState extends State<PatientsParameters> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Text(
            widget.value+widget.unit,
            style: GoogleFonts.jua(
              fontSize: 64,
              color: const Color(0xFF1BB92B),
            ),
          ),
          const Spacer(),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0,right:20.0),
                  child: Text(
                    widget.text,
                    style: GoogleFonts.jua(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0,right:20.0),
                  child: Text(
                    "${widget.value} ${widget.unit}",
                    style: GoogleFonts.jua(fontSize: 20),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
