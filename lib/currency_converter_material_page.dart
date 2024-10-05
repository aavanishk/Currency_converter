
import 'package:flutter/material.dart';
class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState()=>
  _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  
    double result = 0;
    final TextEditingController textEditingController= TextEditingController();

  @override
  Widget build(BuildContext context){
    final border= OutlineInputBorder(
                  borderSide: const BorderSide(
                    color:Color.fromARGB(255, 5, 5, 5),
                    width: 2,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                );

      return Scaffold(
      appBar: AppBar(
        elevation:10,
        title: const Text('Currency Converter',style: TextStyle(
          color: Colors.white,
          ),),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        
      ),
      backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NRS $result',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 10, 10, 10)
              ),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                  color: Color.fromARGB(255, 10, 10, 10)
                  ),
                  decoration: InputDecoration(
                  hintText: 'Please input data in Dollars:',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(153, 7, 7, 7),
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(153, 7, 7, 7),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, 
                  ),
                  ),
              ),
              //button

              Padding(
                padding: const EdgeInsets.all(10.0),
                child : ElevatedButton(
                  onPressed: (){
                    setState(() {
                      result=double.parse(textEditingController.text) * 134.81;
                    });
                    },
                  style:TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: const RoundedRectangleBorder(),
                    ),
                  child: const Text('Convert'),
                ),
              )
                ],
                ),
              ),
        );
  }
  }
