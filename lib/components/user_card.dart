import 'package:flutter/material.dart';

import '../colors/color.dart';
import 'all_styles.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.contaAppBarColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("SALIM ABUUBAKAR AHMED ", style: carHeaderStyle),
            SizedBox(height: 15),
            Text(
              "Account No. ",
              style: carAccountStyle,
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "  81011948001 ",
                  style: carAccountNoStyle,
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    print("Account Number");
                  },
                  child: Container(
                    padding: EdgeInsets.all(1.5),
                    margin: EdgeInsets.only(right: 20),
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("icons/expand.png"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Available Balance", style: carAvailableStyle),
                    SizedBox(height: 5),
                    Text("View Balance", style: carViewStyle),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 6),
                Column(
                  children: [
                    Text("Account Type ", style: carAvailableStyle),
                    SizedBox(height: 5),
                    Text("Current Type", style: carCurrentStyle),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
