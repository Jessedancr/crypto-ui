import 'package:cryptoui/widgets/nav_bar_center_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoNavBar extends StatelessWidget {
  const CryptoNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      currentIndex: 2,
      elevation: 0.0,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/money.svg'),
          label: 'wallet',
        ),
        BottomNavigationBarItem(icon: NavBarCenterIcon(), label: ''),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/activity.svg'),
          label: 'Activity',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/profile.svg'),
          label: 'profile',
        ),
      ],
    );
  }
}
