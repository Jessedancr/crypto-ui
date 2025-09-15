import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountBalanceCard extends StatelessWidget {
  const AccountBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 125,
      // padding: EdgeInsets.only(top: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Color(0xFFF6CAFF), Color(0xFF9509B2)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Stack(
        children: [
          // * Logo
          Positioned(
            right: 20,
            bottom: -15,
            child: SvgPicture.asset('assets/acct_bal_polygon.svg'),
          ),

          // * Card content
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                // * Left side info
                Column(
                  children: [
                    // * Percent today
                    Text(
                      '+2.70% today',
                      style: GoogleFonts.raleway(
                        fontSize: 13,
                        color: Color(0xFF2C0339),
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    // * Acct balance
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        '\$1,6795.25',
                        style: GoogleFonts.raleway(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),

                // * Right side info
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, bottom: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'View all',

                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFFFFFEFE),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right_sharp,
                            color: Color(0xFFFFFEFE),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
