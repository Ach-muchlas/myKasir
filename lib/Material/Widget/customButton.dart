import 'package:flutter/material.dart';
import 'package:tugas_pab/Material/color/my_Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txtButton, required this.onTap});

  final Widget txtButton;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 338,
      width: 69,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17), color: MyColors.kuning),
      child: ElevatedButton(onPressed: onTap, child: txtButton),
    );
  }
}
