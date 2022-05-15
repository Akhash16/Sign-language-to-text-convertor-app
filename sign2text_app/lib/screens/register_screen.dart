import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign2text_app/screens/login_screen.dart';
import 'package:sign2text_app/utils/authentication_service.dart';
import '../components/consts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);
  static const String id = "register_screen";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordRegisterController = TextEditingController();
    TextEditingController confirmPasswordRegisterController = TextEditingController();
  bool passwordRegisterVisibility = false;
  bool confirmPasswordRegisterVisibility =  false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kTertiaryColor,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Text(
                  'Create Account',
                  style: GoogleFonts.montserrat(
                    color: const Color(0xFF0F1113),
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 4, 4, 4),
                child: Text(
                  'Create your account by filling in the information below to access the app.',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    color: Color(0xFF57636C),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: emailAddressController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Your email address...',
                      labelStyle: GoogleFonts.montserrat(
                        color: const Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Enter your email...',
                      hintStyle: GoogleFonts.montserrat(
                        color: const Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color:  Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                    ),
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFF0F1113),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: passwordRegisterController,
                    obscureText: !passwordRegisterVisibility,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.montserrat(
                        color: const Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Please enter your password...',
                      hintStyle: GoogleFonts.montserrat(
                        color: const Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: const Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () =>
                              passwordRegisterVisibility = !passwordRegisterVisibility,
                        ),
                        child: Icon(
                          passwordRegisterVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF57636C),
                          size: 22,
                        ),
                      ),
                    ),
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFF0F1113),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: confirmPasswordRegisterController,
                    obscureText: !confirmPasswordRegisterVisibility,
                    decoration: InputDecoration(
                      labelText: ' Confirm Password',
                      labelStyle: GoogleFonts.montserrat(
                        color: const Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      hintText: 'Please re-enter your password...',
                      hintStyle: GoogleFonts.montserrat(
                        color: const Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: const Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () =>
                              confirmPasswordRegisterVisibility = !confirmPasswordRegisterVisibility,
                        ),
                        child: Icon(
                          confirmPasswordRegisterVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0xFF57636C),
                          size: 22,
                        ),
                      ),
                    ),
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFF0F1113),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.pushNamed(context, LoginPage.id);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        
                      ),
                    ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor)),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Create Account",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
              child: TextButton(
                onPressed: (){Navigator.pushNamed(context, LoginPage.id);},
                child: Text(
                  "Already have an account?",
                  style: GoogleFonts.montserrat(
                    color: kSecondaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            ],
          ),
      ),
    );
  }
}