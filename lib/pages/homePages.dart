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
    //penjelasan dari item
    const String pNasiPecel = 'nasi pecel khas Madiun \ndengan lauk ayam ';
    const String pNasiRawon = 'nasi rawon khas Jawa \nTimur dengan lauk empal';
    const String pNasiBali = 'nasi bali khas Bali \ndengan lauk telor';
    const String pEsTeh = 'Minuman Khas Indonesia \nyang sudah melegenda';

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
            BarMenu(
              imageData: AssetImage('assets/images/nasiPecel.jpg'),
              namaItem: 'Nasi Pecel',
              penjelasanItem: pNasiPecel,
            ),
            BarMenu(
              imageData: AssetImage('assets/images/nasiRawon.jpg'),
              namaItem: 'Nasi Rawon',
              penjelasanItem: pNasiRawon,
            ),
            BarMenu(
              imageData: AssetImage('assets/images/nasiBali.jpg'),
              namaItem: 'Nasi Bali',
              penjelasanItem: pNasiBali,
            ),
            BarMenu(
              imageData: AssetImage('assets/images/esTeh.jpg'),
              namaItem: 'Es Teh',
              penjelasanItem: pEsTeh,
            )
          ],
        ),
      ),
    );
  }
}
