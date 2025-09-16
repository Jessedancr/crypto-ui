import 'package:cryptoui/widgets/nav_bar_center_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int)? onTap;
  const CryptoNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,

      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      elevation: 0.0,
      unselectedItemColor: Colors.grey,
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
