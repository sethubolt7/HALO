import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hola/haloband.dart';
import 'package:hola/widgets.dart';

class IcuPatientsDetails extends StatefulWidget {
  const IcuPatientsDetails({super.key});

  @override
  State<IcuPatientsDetails> createState() => _IcuPatientsDetailsState();
}

class _IcuPatientsDetailsState extends State<IcuPatientsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color.fromARGB(255, 255, 255, 255), //const Color(0xFF794D81),
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
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 10, left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Divider(
                              color: Color.fromARGB(255, 199, 199, 199),
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Name:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  "Vignesh",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,fontSize: 20),
                                )
                              ],
                            ),
                            Divider(
                              color: Color.fromARGB(255, 199, 199, 199),
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Gender Age:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  "M & 20",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,fontSize: 20),
                                )
                              ],
                            ),
                            Divider(
                              color: Color.fromARGB(255, 199, 199, 199),
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Admission No:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,
                                      fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  "456",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 30),
                CustomButton(goto: const HolaBand(), text: "HALO BAND",width: 400,),
                CustomButton(goto: const HolaBand(), text: "HALO CAM",width: 400,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
