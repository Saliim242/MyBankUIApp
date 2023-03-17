import 'package:flutter/material.dart';

import '../colors/color.dart';

class FundTransfer extends StatelessWidget {
  const FundTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Fund Transfer",
          style: TextStyle(
            color: AppColor.contaAppBarColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home_outlined,
              size: 35,
              color: AppColor.contaAppBarColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: 7,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (_, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    var route =
                        MaterialPageRoute(builder: (_) => FundTransfer());
                    Navigator.push(context, route);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColor.iconContColors,
                      // image: DecorationImage(image: AssetImage(list.icon ?? "")),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("icons/transfer.png"),
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "To MyBank",
                        style: TextStyle(
                          color: AppColor.iconContColors,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
