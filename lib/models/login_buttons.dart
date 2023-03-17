import 'package:flutter/cupertino.dart';

class LoginButtons {
  final String? icon;

  final String? buttonName;

  LoginButtons({
    this.icon,
    this.buttonName,
  });
}

var ListButtons = [
  LoginButtons(
    icon: "icons/barcode-scanner.png",
    buttonName: "     Pay\nMerchant",
  ),
  LoginButtons(
    icon: "icons/discount.png",
    buttonName: "Offers",
  ),
  LoginButtons(
    icon: "icons/question.png",
    buttonName: "FAQs",
  ),
  LoginButtons(
    icon: "icons/coin.png",
    buttonName: " Forex \n Rates",
  ),
  LoginButtons(
    icon: "icons/pin.png",
    buttonName: " Location \n Services",
  ),
  LoginButtons(
    icon: "icons/telephone.png",
    buttonName: "Contact \n Details",
  ),
];
