import 'package:flutter/material.dart';

class BarMenu extends StatelessWidget {
  const BarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      height: 118,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(21), boxShadow: [BoxShadow()]),
    );
  }
}