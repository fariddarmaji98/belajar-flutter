import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'themes_colors.dart' as colors;

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semibold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;

final TextStyle smText20 =
    GoogleFonts.poppins(fontSize: 20, fontWeight: semibold);
final TextStyle smText16 =
    GoogleFonts.poppins(fontSize: 16, fontWeight: semibold);
final TextStyle smText14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: semibold);
final TextStyle smText12 =
    GoogleFonts.poppins(fontSize: 12, fontWeight: semibold);

final TextStyle rText14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: regular);
final TextStyle rText12 = GoogleFonts.poppins(
    fontSize: 12, fontWeight: regular, color: colors.colorGrey);

final TextStyle mText14 = GoogleFonts.poppins(fontSize: 14, fontWeight: medium);
final TextStyle mText12 = GoogleFonts.poppins(
    fontSize: 12, fontWeight: medium, color: colors.colorDivider);
final TextStyle mText10 = GoogleFonts.poppins(fontSize: 10, fontWeight: medium);
