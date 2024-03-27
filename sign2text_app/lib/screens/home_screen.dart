import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sign2text_app/screens/login_screen.dart';
import 'package:sign2text_app/utils/authentication_service.dart';

import '../components/consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTertiaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kTertiaryColor,
        leading: IconButton(
          onPressed: (){
Navigator.pushNamed(context, LoginPage.id);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              color: Color.fromARGB(255, 217, 214, 207),
              width: MediaQuery.of(context).size.width*0.8,
              height: 300,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            child: Text(
                  '    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqui',
                  style: GoogleFonts.montserrat(
                   
                    color: Color.fromARGB(255, 38, 39, 39),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
            
            
          ),
         
        ],
      ),
    );
  }
}
