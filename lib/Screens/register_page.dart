import 'package:flutter/material.dart';
import 'package:my_bank_app/Screens/export_screens.dart';
import 'package:my_bank_app/colors/color.dart';
import 'package:my_bank_app/components/buttons.dart';

import '../components/list_login_buttons.dart';
import '../models/login_buttons.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, this.list}) : super(key: key);
  final LoginButtons? list;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  DateTime _dateTime = DateTime.now();
  bool isCheck = false;

  final txtStyl = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black38, // Color(0xffD4D4D4)
  );

  // Date Time Picker
  void _showTimePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: AppColor.contaAppBarColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Image(
                  image: AssetImage("images/footer_logo.png"),
                  height: 40,
                ),
                SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Self Registration",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.homeIconColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(150),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 10),
                // User TextField
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter User ID ",
                        hintStyle: txtStyl,
                        suffixIcon: Image.asset(
                          "icons/info.png",
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                // Phone TextField
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Mobile Number (Ex. 2526XXXXXXX)",
                        hintStyle: txtStyl,
                      ),
                    ),
                  ),
                ),
                // Email TextField
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Email ID",
                        hintStyle: txtStyl,
                      ),
                    ),
                  ),
                ),
                // Date TextField
                GestureDetector(
                  onTap: () => _showTimePicker(),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "DD-MM-YYYY",
                            hintStyle: txtStyl,
                            prefixIcon: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                VerticalDivider(),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text("DOB"),
                                ),
                              ],
                            ),
                            suffixIcon: Icon(Icons.calendar_today_outlined)),
                      ),
                    ),
                  ),
                ),
                // Date Picker End
                Row(
                  children: [
                    Checkbox(
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            //newValue = isCheck;
                            isCheck = newValue!;
                          });
                          // isCheck != isCheck;
                        }),
                    Text("I have read and accept the "),
                    Expanded(
                      child: Text(
                        "terms & conditions",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColor.contaAppBarColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account?  ",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => LogingScreen())),
                      child: Text(
                        "Sign In!",
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
                SizedBox(height: 10),
                Container(
                  child: GridView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: ListButtons.length,
                    itemBuilder: (context, index) =>
                        ListButtonsLogin(list: ListButtons[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
