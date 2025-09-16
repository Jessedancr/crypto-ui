import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'TRANSFER SCREEN',
          style: GoogleFonts.righteous(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
