import 'package:flutter/material.dart';
import 'package:proje_iki_dinamik_not_ortalama_hesaplama/constants/app_constants.dart';
import 'package:proje_iki_dinamik_not_ortalama_hesaplama/widgets/ortalama_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   //Uygulamanın ana teması
      debugShowCheckedModeBanner: false,
      title: 'Dinamik Ortalama Hesapla',
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,     //Tanımladığımız renge uygun renkleride tanımlar
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //Flutter farklı ortamlarda da çalıştığı için o ortama uygun görünmesini sağlar
      ),
      home: OrtalamaHesapla(),
    );
  }
}


