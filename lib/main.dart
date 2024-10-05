import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

//1.material design
//2. cupertino design

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
} 