import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  AppStyles._();
  static final TextStyle _poppinsFont = GoogleFonts.poppins();
  static final TextStyle _interFont = GoogleFonts.inter();
  static final TextStyle _dmSansFont = GoogleFonts.dmSans();
  static final TextStyle p20W600 = _poppinsFont.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle p14W600 = _poppinsFont.copyWith(
    fontSize: 14,
    fontWeight: .w600,
  );
  static final TextStyle p14W400 = _poppinsFont.copyWith(
    fontSize: 14,
    fontWeight: .w400,
  );
  static final TextStyle p16W700 = _poppinsFont.copyWith(
    fontSize: 16,
    fontWeight: .w700,
  );
  static final TextStyle i16W400 = _interFont.copyWith(
    fontSize: 16,
    fontWeight: .w400,
  );
  static final TextStyle dm15W400 = _dmSansFont.copyWith(
    fontSize: 15,
    fontWeight: .w400,
  );
}
