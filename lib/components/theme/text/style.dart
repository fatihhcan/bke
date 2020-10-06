import 'package:enkahsp/components/theme/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text appBarTitle = Text(
  "Mass Body Index",
  style: GoogleFonts.mitr(fontWeight: FontWeight.w500),
);

Text heightText = Text(
  "Height",
  style: GoogleFonts.mitr(fontWeight: FontWeight.bold),
);

Text weightText = Text(
  "Weight",
  style: GoogleFonts.mitr(fontWeight: FontWeight.bold),
);

Text resultText = Text(
  "Result",
  style: GoogleFonts.mitr(fontWeight: FontWeight.w400, color: sixthColor),
);
