import 'package:flutter/material.dart';
import 'package:my_bank_app/models/main_services.dart';

import '../Screens/found_transfer.dart';
import '../colors/color.dart';

class MainService extends StatelessWidget {
  const MainService({
    Key? key,
    required this.services,
  }) : super(key: key);

  final MainServices services;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            var route = MaterialPageRoute(builder: (_) => FundTransfer());
            Navigator.push(context, route);
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColor.iconContColors,
              // image: DecorationImage(image: AssetImage(list.icon ?? "")),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("${services.iconImage}"),
          ),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "${services.iconTitle}",
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
  }
}
