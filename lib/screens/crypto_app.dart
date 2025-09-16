import 'package:cryptoui/screens/bottom_nav_bar/activity_screen.dart';
import 'package:cryptoui/screens/bottom_nav_bar/home_screen.dart';
import 'package:cryptoui/screens/bottom_nav_bar/profile_screen.dart';
import 'package:cryptoui/screens/bottom_nav_bar/transfer_screen.dart';
import 'package:cryptoui/screens/bottom_nav_bar/wallet_screen.dart';
import 'package:cryptoui/widgets/crypto_app_bar.dart';
import 'package:cryptoui/widgets/crypto_nav_bar.dart';
import 'package:flutter/material.dart';

class CryptoApp extends StatefulWidget {
  const CryptoApp({super.key});

  @override
  State<CryptoApp> createState() => _CryptoAppState();
}

class _CryptoAppState extends State<CryptoApp> {
  int selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> screens = [
    HomeScreen(),
    WalletScreen(),
    TransferScreen(),
    ActivityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: CryptoNavBar(
          onTap: _navigateBottomBar,
          selectedIndex: selectedIndex,
        ),
        appBar: selectedIndex == 0 ? CryptoAppBar() : null,
        body: screens[selectedIndex],
      ),
    );
  }
}
