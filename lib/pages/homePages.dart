import 'package:flutter/material.dart';
import 'package:tugas_pab/Material/Widget/barMenu.dart';
import 'package:tugas_pab/Material/color/my_Colors.dart';
import 'package:tugas_pab/Material/typografi/my_Typography.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('MyKasir',
            style: MyTypography.LargeBold.copyWith(
                color: MyColors.kuning,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(1, 1), blurRadius: 5, color: Colors.grey)
                ])),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            // BarMenu(
            //   imageData: AssetImage('assets/images/nasiPecel.jpg'),
            // ),
            // BarMenu(
            //   imageData: AssetImage('assets/images/nasiRawon.jpg'),
            // ),
            // BarMenu(
            //   imageData: AssetImage('assets/images/nasiBali.jpg'),
            // ),
            BarMenu(
              imageData: AssetImage('assets/images/esTeh.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
