import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tugas_pab/Material/Widget/customButton.dart';
import 'package:tugas_pab/Material/color/my_Colors.dart';
import 'package:tugas_pab/Material/typografi/my_Typography.dart';
import 'package:tugas_pab/pages/homePages.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key, required this.valueNasiPecel, required this.valueNasiRawon, required this.valueNasiBali, required this.valueEsTeh});

  final int valueNasiPecel;
  final int valueNasiRawon;
  final int valueNasiBali;
  final int valueEsTeh;

  @override
  Widget build(BuildContext context) {
    int valueSubTotal = (valueNasiPecel * 14000) +
        (valueNasiRawon * 17000) +
        (valueNasiBali * 12000) +
        (valueEsTeh * 3000);

    double valuePPN = valueSubTotal * 0.10;

    int valueTotal = valueSubTotal + valuePPN.toInt();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            iconSize: 40.0,
          ),
          title: Text('Transaction',
              style: MyTypography.LargeBold.copyWith(
                  color: MyColors.kuning,
                  shadows: <Shadow>[
                    const Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 5,
                      color: Colors.grey,
                    )
                  ])),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          margin: const EdgeInsets.only(top: 57.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 228.0,
                width: double.infinity,
                padding:
                    const EdgeInsets.only(left: 27.0, right: 39.0, top: 5.0),
                decoration: BoxDecoration(
                    color: MyColors.abuabu,
                    borderRadius: BorderRadius.circular(25.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Menu Yang Dipilih',
                          style: MyTypography.LargeBold2.copyWith(
                              color: Colors.black),
                        ),
                        Text('Quality',
                            style: MyTypography.LargeBold2.copyWith(
                                color: Colors.black)),
                      ],
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Nasi Pecel',
                              style: MyTypography.LargeBold2.copyWith(
                                  color: Colors.black)),
                          Text('$valueNasiPecel',
                              style: MyTypography.LargeBold2.copyWith(
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Nasi Rawon',
                            style: MyTypography.LargeBold2.copyWith(
                                color: Colors.black),
                          ),
                          Text('$valueNasiRawon',
                              style: MyTypography.LargeBold2.copyWith(
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Nasi Bali',
                            style: MyTypography.LargeBold2.copyWith(
                                color: Colors.black),
                          ),
                          Text('$valueNasiBali',
                              style: MyTypography.LargeBold2.copyWith(
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Es Teh',
                            style: MyTypography.LargeBold2.copyWith(
                                color: Colors.black),
                          ),
                          Text('$valueEsTeh',
                              style: MyTypography.LargeBold2.copyWith(
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 37.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27.0, right: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: MyTypography.Reguler2.copyWith(
                              color: Colors.black),
                        ),
                        Text(
                          NumberFormat.currency(
                                  locale: 'id', symbol: 'Rp', decimalDigits: 0)
                              .format(valueSubTotal),
                          style: MyTypography.Reguler2.copyWith(
                              color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PPN',
                          style: MyTypography.Reguler2.copyWith(
                              color: Colors.black),
                        ),
                        Text(
                          NumberFormat.currency(
                                  locale: 'id', symbol: 'Rp', decimalDigits: 0)
                              .format(valuePPN),
                          style: MyTypography.Reguler2.copyWith(
                              color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Pembayaran',
                          style: MyTypography.Reguler2.copyWith(
                              color: Colors.black),
                        ),
                        Text(
                          NumberFormat.currency(
                                  locale: 'id', symbol: 'Rp', decimalDigits: 0)
                              .format(valueTotal),
                          style: MyTypography.Reguler2.copyWith(
                              color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          width: 400,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 45.0, right: 45.0, bottom: 23.0),
            child: CustomButton(
                txtButton: Text(
                  'Cetak',
                  style: MyTypography.LargeBold2.copyWith(color: Colors.black),
                ),
                onTap: () {
                  return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Text('Succes',
                              style: MyTypography.Reguler2.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          contentPadding:
                              const EdgeInsets.only(top: 50, left: 110),
                          actions: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 1.0,
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const HomePages()));
                                },
                                // ignore: prefer_const_constructors
                                child: Text(
                                  'Ok',
                                  style: const TextStyle(color: Colors.black),
                                ))
                          ],
                        );
                      });
                }),
          ),
        ));
  }
}
