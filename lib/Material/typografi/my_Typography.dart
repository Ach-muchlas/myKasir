import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTypography {
  static final LargeBold =
      GoogleFonts.poppins().copyWith(fontSize: 35, fontWeight: FontWeight.bold);
  static final LargeBoldItalic = GoogleFonts.poppins().copyWith(
      fontSize: 17, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);
  static final LargeBold2 =
      GoogleFonts.poppins().copyWith(fontSize: 20, fontWeight: FontWeight.bold);
  static final Reguler = GoogleFonts.poppins().copyWith(fontSize: 15);
  static final Reguler2 = GoogleFonts.poppins().copyWith(fontSize: 20);
  static final SmallLight =
      GoogleFonts.poppins().copyWith(fontSize: 12, fontWeight: FontWeight.w100);
}
