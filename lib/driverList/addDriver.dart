import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddDriver extends StatelessWidget {
  AddDriver({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController licenseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Padding(
            padding: EdgeInsets.only(top: 22),
            child: Text('Add Driver'),
          ),
        ),
      ),
      body: SingleChildScrollView (
        child: Column(
          children: [
            addDriver(nameController, 'Enter Name'),
            addDriver(licenseController, 'Enter License Number'),
            Padding(
              padding: EdgeInsets.only(
                  left: 26,
                  right: 26,
                  top: MediaQuery.of(context).size.height * 0.46),
              child: SizedBox(
                height: 64,
                child: GestureDetector(
                  // onTap: () => Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute<dynamic>(
                  //       builder: (context) => AddDriver(),
                  //     )),
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
                              left: 97,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Add Driver',
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
      ),
    );
  }

  Padding addDriver(
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
