import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarCenterIcon extends StatelessWidget {
  const NavBarCenterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 1.0,
          colors: [Color(0xFF9509B2), Color(0xFF40044C)],
        ),
      ),
      child: SvgPicture.asset('assets/swap.svg'),
    );
  }
}
