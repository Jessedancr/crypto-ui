import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoTextfield extends StatelessWidget {
  final String labelText;
  const CryptoTextfield({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Color(0xFFFFFEFE)),
        fillColor: Color(0xFFA09D9D),
        filled: true,
        label: Align(
          alignment: Alignment.center,
          child: Text(
            labelText,
            style: GoogleFonts.righteous(
              color: Color(0xFFFFFEFE),
              fontSize: 16,
            ),
          ),
        ),

        // * Out of focus border
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: Colors.white),
        ),

        // * Focused border
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(color: Color(0xFFFFFEFE), width: 2),
        ),
      ),
    );
  }
}
