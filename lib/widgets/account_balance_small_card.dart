import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountBalanceSmallCard extends StatelessWidget {
  const AccountBalanceSmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Color(0xFFF6CAFF), Color(0xFF9509B2)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: SvgPicture.asset('assets/acct_bal_polygon.svg', height: 70),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+2.70% today',
                  style: GoogleFonts.raleway(
                    fontSize: 15,
                    color: Color(0xFF2C0339),
                    fontWeight: FontWeight.w300,
                  ),
                ),

                Text(
                  '\$1,6795.25',
                  style: GoogleFonts.raleway(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
