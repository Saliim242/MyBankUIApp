import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bank_app/Screens/register_page.dart';
import 'package:my_bank_app/colors/color.dart';
import 'package:my_bank_app/components/all_inputs.dart';
import 'package:my_bank_app/components/buttons.dart';

import '../components/list_login_buttons.dart';
import '../models/login_buttons.dart';

class LogingScreen extends StatelessWidget {
  const LogingScreen({Key? key, this.list}) : super(key: key);
  final LoginButtons? list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(90),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              // Title and description
              children: [
                // Custom AppBar
                //SizedBox(height: 30),
                // Login  Side
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Text(
                        "Welcome!",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Login to Mobile \n       Banking",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15),
                      InputText(
                        hintText: "USER-ID",
                        foregtText: "Forgot User ID?",
                      ),
                      SizedBox(height: 15),
                      InputText(
                        hintText: "M-PIN",
                        foregtText: "Forgot M-PIN?",
                      ),
                      SizedBox(height: 15),
                      AllButtons(
                        btnName: "Login",
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don\'t have an Account?  ",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(context,
                                MaterialPageRoute(builder: (_) => SignUp())),
                            child: Text(
                              "Sign Up!",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.lightBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: GridView.builder(
                          //physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            //childAspectRatio: 1.2,
                          ),
                          itemCount: ListButtons.length,
                          itemBuilder: (context, index) =>
                              ListButtonsLogin(list: ListButtons[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// Custom AppBar
  Widget CustomAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            child: Image.asset("images/Mybank.png", height: 40),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColor.iconContColors,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("icons/play.png"),
              ),
            ),
            SizedBox(height: 0),
            Container(
              child: Text(
                "View Demo ",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
