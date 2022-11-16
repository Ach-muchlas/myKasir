import 'package:flutter/material.dart';
import 'package:tugas_pab/Material/color/my_Colors.dart';
import 'package:tugas_pab/Material/typografi/my_Typography.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarMenu extends StatelessWidget {
  const BarMenu(
      {super.key,
      required this.imageData,
      required this.namaItem,
      required this.penjelasanItem});

  final AssetImage imageData;
  final String namaItem;
  final String penjelasanItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      height: 125,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 17, top: 12, bottom: 5),
                  child: Text(
                    namaItem,
                    style: MyTypography.Reguler.copyWith(color: Colors.black),
                  )),
              Container(
                padding: EdgeInsets.only(left: 17),
                child: Text(
                  penjelasanItem,
                  textAlign: TextAlign.left,
                  style: MyTypography.SmallLight.copyWith(
                      color: MyColors.fontAbuabu),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 17),
                    child: Text(
                      'Rp 14.000',
                      style: MyTypography.LargeBoldItalic.copyWith(
                          color: Colors.black),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print('Hallo');
                    },
                    icon: FaIcon(FontAwesomeIcons.plus),
                    iconSize: 10,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
