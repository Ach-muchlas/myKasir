import 'package:flutter/material.dart';

class BarMenu extends StatelessWidget {
  const BarMenu({super.key, required this.imageData});

  final AssetImage imageData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      height: 118,
      margin: const EdgeInsets.only(left: 41, right: 46, top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(21),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 1,
              spreadRadius: 0,
            )
          ]),
      child: Row(
        children: [
          Container(
            height: 97,
            width: 107,
            margin: EdgeInsets.only(left: 11, bottom: 12, top: 9),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageData,
                  fit: BoxFit.cover,
                ),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(21)),
          ),
          // Container(
          //   child: Text('Nasi Pecel'),
          // )
        ],
      ),
    );
  }
}
