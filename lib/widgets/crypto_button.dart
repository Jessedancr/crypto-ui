import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;

  const CryptoButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE062F9), Color(0xFF560366)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.righteous(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
