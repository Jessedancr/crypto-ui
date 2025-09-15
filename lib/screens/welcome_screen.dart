import 'package:cryptoui/widgets/crypto_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // * Top right polygon
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [SvgPicture.asset('assets/Polygon.svg')],
            ),

            // * Logo and caption
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/logo.svg'),
                Text(
                  'An All-in-One Cryptocurrency App',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.righteous(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            // * Continue button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CryptoButton(
                buttonText: 'Continue',
                onTap: () => Navigator.pushNamed(context, '/login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
