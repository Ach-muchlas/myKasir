import 'package:flutter/material.dart';
import 'package:tugas_pab/pages/homePages.dart';
import 'package:tugas_pab/pages/transactionPages.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Kasir_Resto',
    debugShowCheckedModeBanner: false,
    home: TransactionPage(),    
  ));
}
