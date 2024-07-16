import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///[TextStyleConstants] is a class which contains all the text styles used in the app.
class TextStyleConstants {
  // main heading text style
  static const displayLargeTextStyle =
      TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  // medium heading text style
  static const displayMediumTextStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // sub heading text style
  static var displaySmallTextStyle = TextStyle(
    fontSize: 20,
    fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w600).fontFamily,
  );
  // font family
  static var fontFamily =
      GoogleFonts.roboto(fontWeight: FontWeight.w600).fontFamily;
  // label small or hint  text style
  static var labelSmallTextStyle = TextStyle(
    fontSize: 15,
    fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w600).fontFamily,
  );
}
