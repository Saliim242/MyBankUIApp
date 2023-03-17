import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:my_bank_app/models/main_services.dart';

import 'all_styles.dart';

class OtherService extends StatelessWidget {
  const OtherService({Key? key, required this.other}) : super(key: key);

  final MainServices other;

// 19285A card
  // eaeff3
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            ArtSweetAlert.show(
              context: context,
              artDialogArgs: ArtDialogArgs(
                  type: ArtSweetAlertType.success,
                  title: "Yes I did it",
                  text: "Shaqo Way Nimantahay",
                  getTitleSize: 25,
                  sizeSuccessIcon: 80,
                  dialogElevation: 10,
                  confirmButtonText: "Riix"),
            );
          },
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Color(0xffeaeff3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(other.iconImage ?? ""),
          ),
        ),
        SizedBox(height: 8),
        Text(other.iconTitle ?? "", style: containerListsStyle),
      ],
    );
  }
}
