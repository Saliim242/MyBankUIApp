import 'package:flutter/material.dart';

import '../colors/color.dart';
import '../models/login_buttons.dart';
import 'all_styles.dart';

class ListButtonsLogin extends StatelessWidget {
  const ListButtonsLogin({Key? key, required this.list}) : super(key: key);
  final LoginButtons list;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColor.iconContColors,
            // image: DecorationImage(image: AssetImage(list.icon ?? "")),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(list.icon ?? ""),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                list.buttonName ?? "",
                style: containerListsStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
