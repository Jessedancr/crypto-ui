import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'PROFILE SCREEN',
          style: GoogleFonts.righteous(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
