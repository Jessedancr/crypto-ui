import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CryptoAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
        onPressed: () => Navigator.pop(context),
      ),
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 27.0),
              child: Text(
                'Hello Jessedancr',
                style: GoogleFonts.righteous(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
