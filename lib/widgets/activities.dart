import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Actvities extends StatelessWidget {
  final String date;
  final String price;
  const Actvities({super.key, required this.date, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      decoration: BoxDecoration(
        color: Color(0xFF5A4E59),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          // * Date
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                date,
                style: GoogleFonts.redditMono(fontSize: 6, color: Colors.white),
              ),
            ],
          ),

          // * UID + Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'UID  456789110',
                style: GoogleFonts.redditMono(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              Text(
                price,
                style: GoogleFonts.redditMono(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Color(0xFF71FF6C),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
