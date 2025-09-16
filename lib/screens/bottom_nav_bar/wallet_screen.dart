import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'WALLET',
          style: GoogleFonts.righteous(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
