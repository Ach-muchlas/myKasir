import 'package:flutter/material.dart';
import 'package:tugas_pab/Material/color/my_Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txtButton, required this.onTap});

  final Widget txtButton;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      margin: const EdgeInsets.only(top: 50),
      height: 69,
      width: 320,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: MyColors.kuning,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              )),
          onPressed: onTap,
          child: txtButton),
    );
  }
}
