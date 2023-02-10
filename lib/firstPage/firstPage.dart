import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksrtc_app/loginScreen/loginScreen.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 2.7 / 6),
              child: Stack(children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 226,
                  ),
                  child: Icon(Icons.arrow_drop_down,
                      size: 58, color: Colors.yellow),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'moov',
                        style: TextStyle(fontSize: 44, color: Colors.white),
                      ),
                      Text('be',
                          style: TextStyle(fontSize: 44, color: Colors.yellow))
                    ],
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 26,
                  right: 26,
                  top: MediaQuery.of(context).size.height * 2 / 6),
              child: SizedBox(
                height: 64,
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (context) =>  LoginScreen(),
                      )),
                  child: Card(
                    shadowColor: Colors.redAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromARGB(255, 247, 186, 182),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(
                              left: 97,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Get Started',
                                  style: GoogleFonts.abhayaLibre(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
