import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksrtc_app/homeScreen/homeScreen.dart';
import 'package:ksrtc_app/loginScreen/widgets/loginBannerr.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(children: [
            const TopStackWelcomeWidget(),
            Padding(
              padding: EdgeInsets.only(
                  left: 49, top: MediaQuery.of(context).size.height * 0.13),
              child: const Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 38, top: MediaQuery.of(context).size.height * 0.19),
              child: const Text(
                'Manage your Bus and Drivers',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ]),
          textfield(nameController, 'Enter User Name'),
          textfield(passwordController, 'Enter Password'),
          Padding(
            padding: EdgeInsets.only(
                left: 31,
                right: 31,
                top: MediaQuery.of(context).size.height * 0.25),
            child: SizedBox(
              height: 64,
              child: GestureDetector(
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (context) => HomeScreen(),
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
                  color: Colors.red,
                  child: Column(
                    children: [
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(
                            left: 120,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Login',
                                style: GoogleFonts.abhayaLibre(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
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
      ),
    );
  }

  Padding textfield(
    TextEditingController? controller,
    String? text1,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 232, 226, 226),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 23,
            horizontal: 10,
          ),
          hintText: text1,
          hintStyle: GoogleFonts.abel(
            fontSize: 17,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
