import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickActions extends StatelessWidget {
  final String actionText;
  final Widget actionIcon;
  const QuickActions({
    super.key,
    required this.actionIcon,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      width: 67,
      decoration: BoxDecoration(
        color: Color(0xFF5A4E59),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          actionIcon,
          Text(
            actionText,
            style: GoogleFonts.righteous(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
