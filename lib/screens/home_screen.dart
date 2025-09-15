import 'package:cryptoui/widgets/account_balance_card.dart';
import 'package:cryptoui/widgets/activities.dart';
import 'package:cryptoui/widgets/crypto_app_bar.dart';
import 'package:cryptoui/widgets/crypto_nav_bar.dart';
import 'package:cryptoui/widgets/quick_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final quickActionsData = [
    ['assets/swap_thin.svg', 'Transfer'],
    ['assets/download.svg', 'Receive'],
    ['assets/swap_vert.svg', 'Swap'],
    ['assets/multi_money.svg', 'Earn'],
  ];

  final activitiesData = [
    ['December 30', '+\$1,200.25'],
    ['January 3rd', '+\$1,100.25'],
    ['January 10th', '+\$900'],
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: CryptoNavBar(),
        appBar: CryptoAppBar(),
        body: Stack(
          children: [
            // * Top polygon
            Positioned(
              right: -30,
              top: -15,
              child: SvgPicture.asset('assets/home_screen_top_polygon.svg'),
            ),

            // * Bottom polygon
            Positioned(
              left: -30,
              bottom: -15,
              child: SvgPicture.asset(
                'assets/home_screen_top_polygon.svg',
                height: 300,
              ),
            ),

            // * Main content
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.13),
                  AccountBalanceCard(),
                  SizedBox(height: height * 0.03),

                  // * "Quick actions"
                  Text(
                    'Quick Actions',
                    style: GoogleFonts.righteous(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),

                  // * Quick actions tags
                  SizedBox(
                    height: 67,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: quickActionsData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: index != quickActionsData.length - 1
                              ? EdgeInsets.only(right: width * 0.05)
                              : const EdgeInsets.only(right: 0.0),
                          child: QuickActions(
                            actionIcon: SvgPicture.asset(
                              quickActionsData[index][0],
                            ),
                            actionText: quickActionsData[index][1],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: height * 0.05),

                  Text(
                    'My Activities',
                    style: GoogleFonts.righteous(
                      color: Color(0xFFFFFEFE),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: height * 0.02),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var act in activitiesData)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Actvities(date: act[0], price: act[1]),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
