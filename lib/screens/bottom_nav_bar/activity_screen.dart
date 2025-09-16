import 'package:cryptoui/widgets/account_balance_small_card.dart';
import 'package:cryptoui/widgets/crypto_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

final String moreInfoDummyText =
    'Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.1),
            AccountBalanceSmallCard(),
            SizedBox(height: height * 0.06),

            // * CHART GOES HERE
            CryptoChart(),

            // * DUMMY TEXT
            SizedBox(height: height * 0.08),
            Text(
              'Lorem Ipsum Dolor',
              style: GoogleFonts.righteous(
                fontSize: 18,
                color: Color(0xFFFFFEFE),
              ),
            ),

            // * MORE INFO DUMMY TEXT
            Text(
              moreInfoDummyText,
              style: GoogleFonts.righteous(
                fontSize: 10,
                color: Color(0xFFFFFEFE),
              ),
            ),

            // * Logo + see more
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.translate(
                  offset: Offset(-60, 10),
                  child: SvgPicture.asset('assets/activity_polygon.svg'),
                ),
                Row(
                  children: [
                    Text(
                      'See more',
                      style: TextStyle(
                        fontSize: 13,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFFFFFEFE),
                      ),
                    ),
                    Icon(Icons.chevron_right_sharp, color: Color(0xFFFFFEFE)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
