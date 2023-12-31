//Uygulamada bulunan tüm sabitler burda yer alacak

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabitler {
  static const anaRenk = Colors.indigo;
  static const String baslilkText = 'Ortalama Hesapla';
  static final TextStyle baslikStyle = GoogleFonts.quicksand(
    fontSize: 24, fontWeight: FontWeight.w900, color: anaRenk
  );

  static TextStyle textStyle(
      double size, FontWeight fontWeight, Color colorName) =>
      GoogleFonts.quicksand(
          fontWeight: fontWeight, fontSize: size, color: colorName);

  static BorderRadius borderRadius = BorderRadius.circular(24);
}