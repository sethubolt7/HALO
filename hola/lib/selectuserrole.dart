import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hola/doctorhomepage.dart';

class SelectUserRole extends StatefulWidget {
  const SelectUserRole({super.key});

  @override
  State<SelectUserRole> createState() => _SelectUserRoleState();
}

class _SelectUserRoleState extends State<SelectUserRole> {
  @override
  Widget build(BuildContext context) {
    String userName = "";
    String passWord = "";
    void verifyLogin() {
      if (userName.trim() == "doc1" && passWord == "doc1") {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const DoctorHomePage()));
      } else {
        const snackBar = SnackBar(
          content: Text('Wrong Credentials!!'),
          duration: Duration(seconds: 3),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

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
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset("assets/intro_page_bg/bottom_right.svg"),
            ),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: Text(
                        'HALO',
                        style: GoogleFonts.jua(
                          fontSize: 96,
                        ),
                      ),
                    ),
                    Text(
                      'One Care Solution',
                      style: GoogleFonts.jua(
                        fontSize: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: TextField(
                        onSubmitted: (value) {
                          verifyLogin();
                        },
                        onChanged: (value) {
                            userName = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'DOCTOR ID',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 20),
                      child: TextField(
                        onSubmitted: (value) {
                          verifyLogin();
                        },
                        onChanged: (value) {
                            passWord = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'PASSWORD',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: verifyLogin,
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF8A4CBC)),
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: GoogleFonts.jua(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
