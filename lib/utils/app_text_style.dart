import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  // Noto Sans KR styles
  TextStyle notoSansBody({Color? color, double? fontSize}) =>
      GoogleFonts.notoSansKr(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize ?? 12, // Ubah ukuran font menjadi 12
          fontWeight: FontWeight.w400,
        ),
      );

  TextStyle notoSansHeading({Color? color, double? fontSize}) =>
      GoogleFonts.notoSansKr(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize ?? 18, // Ubah ukuran font menjadi 18
          fontWeight: FontWeight.w500,
        ),
      );

  TextStyle notoSansTitle({Color? color}) => GoogleFonts.notoSansKr(
    textStyle: TextStyle(
      color: color,
      fontSize: 14, // Ubah ukuran font menjadi 16
      fontWeight: FontWeight.w700,
    ),
  );

  TextStyle notoSansSubtitle({Color? color}) => GoogleFonts.notoSansKr(
    textStyle: TextStyle(
      color: color,
      fontSize: 14, // Ubah ukuran font menjadi 14
      fontWeight: FontWeight.w500,
    ),
  );

  TextStyle notoSansDescription({Color? color}) => GoogleFonts.notoSansKr(
    textStyle: TextStyle(
      color: color,
      fontSize: 10, // Ubah ukuran font menjadi 10
      fontWeight: FontWeight.w700,
    ),
  );

  // Roboto
  TextStyle robotoBody({Color? color}) => GoogleFonts.roboto(
    textStyle: TextStyle(
      color: color,
      fontSize: 12, // Ubah ukuran font menjadi 12
      fontWeight: FontWeight.w400,
    ),
  );

  TextStyle robotoHeading({Color? color}) => GoogleFonts.roboto(
    textStyle: TextStyle(
      color: color,
      fontSize: 24, // Ubah ukuran font menjadi 18
      fontWeight: FontWeight.w500,
    ),
  );

  TextStyle robotoTitle({Color? color}) => GoogleFonts.roboto(
    textStyle: TextStyle(
      color: color,
      fontSize: 16, // Ubah ukuran font menjadi 16
      fontWeight: FontWeight.w600,
    ),
  );

  TextStyle robotoSubtitle({Color? color}) => GoogleFonts.roboto(
    textStyle: TextStyle(
      color: color,
      fontSize: 14, // Ubah ukuran font menjadi 14
      fontWeight: FontWeight.w500,
    ),
  );

  TextStyle robotoDescription({Color? color}) => GoogleFonts.roboto(
    textStyle: TextStyle(
      color: color,
      fontSize: 7, // Ubah ukuran font menjadi 10
      fontWeight: FontWeight.w700,
    ),
  );
}