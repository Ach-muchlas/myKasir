import 'package:flutter/material.dart';
import 'package:tugas_pab/Material/Widget/barMenu.dart';
import 'package:tugas_pab/Material/Widget/customButton.dart';
import 'package:tugas_pab/Material/color/my_Colors.dart';
import 'package:tugas_pab/Material/typografi/my_Typography.dart';
import 'package:tugas_pab/pages/transactionPages.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _valueNasiPecel = 0;
  int _valueNasiRawon = 0;
  int _valueNasiBali = 0;
  int _valueEsTeh = 0;

  void _incrementNasiPecel() {
    setState(() {
      _valueNasiPecel++;
    });
  }

  void _incrementNasiRawon() {
    setState(() {
      _valueNasiRawon++;
    });
  }

  void _incrementNasiBali() {
    setState(() {
      _valueNasiBali++;
    });
  }

  void _incrementEsTeh() {
    setState(() {
      _valueEsTeh++;
    });
  }

  void _decrementNasiPecel() {
    setState(() {
      _valueNasiPecel--;
      if (_valueNasiPecel < 0) {
        _valueNasiPecel = 0;
      }
    });
  }

  void _decrementNasiRawon() {
    setState(() {
      _valueNasiRawon--;
      if (_valueNasiRawon < 0) {
        _valueNasiRawon = 0;
      }
    });
  }

  void _decrementNasiBali() {
    setState(() {
      _valueNasiBali--;
      if (_valueNasiBali < 0) {
        _valueNasiBali = 0;
      }
    });
  }

  void _decrementEsTeh() {
    setState(() {
      _valueEsTeh--;
      if (_valueEsTeh < 0) {
        _valueEsTeh = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //penjelasan dari item
    const String pNasiPecel = 'nasi pecel khas Madiun \ndengan lauk ayam ';
    const String pNasiRawon = 'nasi rawon khas Jawa \nTimur dengan lauk empal';
    const String pNasiBali = 'nasi bali khas  Bali \ndengan lauk telor';
    const String pEsTeh = 'Minuman Khas Indonesia \nyang sudah melegenda';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('MyKasir',
            style: MyTypography.LargeBold.copyWith(
                color: MyColors.kuning,
                shadows: <Shadow>[
                  const Shadow(
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
              imageData: const AssetImage('assets/images/nasiPecel.jpg'),
              namaItem: 'Nasi Pecel',
              penjelasanItem: pNasiPecel,
              harga: '14.000',
              myvalue: Text('$_valueNasiPecel'),
              onTapPlus: _incrementNasiPecel,
              onTapMin: _decrementNasiPecel,
            ),
            BarMenu(
              imageData: const AssetImage('assets/images/nasiRawon.jpg'),
              namaItem: 'Nasi Rawon',
              penjelasanItem: pNasiRawon,
              harga: '17.000',
              myvalue: Text('$_valueNasiRawon'),
              onTapPlus: _incrementNasiRawon,
              onTapMin: _decrementNasiRawon,
            ),
            BarMenu(
              imageData: const AssetImage('assets/images/nasiBali.jpg'),
              namaItem: 'Nasi Bali',
              penjelasanItem: pNasiBali,
              harga: '12.000',
              myvalue: Text('$_valueNasiBali'),
              onTapPlus: _incrementNasiBali,
              onTapMin: _decrementNasiBali,
            ),
            BarMenu(
              imageData: const AssetImage('assets/images/esTeh.jpg'),
              namaItem: 'Es Teh',
              penjelasanItem: pEsTeh,
              harga: '3.000',
              myvalue: Text('$_valueEsTeh'),
              onTapPlus: _incrementEsTeh,
              onTapMin: _decrementEsTeh,
            ),
            CustomButton(
                txtButton: Text('Add to Order',
                    style:
                        MyTypography.LargeBold2.copyWith(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TransactionPage(
                                valueNasiPecel: _valueNasiPecel,
                                valueNasiRawon: _valueNasiRawon,
                                valueNasiBali: _valueNasiBali,
                                valueEsTeh: _valueEsTeh,
                              )));
                })
          ],
        ),
      ),
    );
  }
}
