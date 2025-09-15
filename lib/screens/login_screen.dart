import 'package:cryptoui/screens/home_screen.dart';
import 'package:cryptoui/widgets/crypto_button.dart';
import 'package:cryptoui/widgets/crypto_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              // * Polygon logo
              Positioned(
                bottom: -40,
                right: -40,
                child: SvgPicture.asset('assets/Polygon_login.svg'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // * Logo
                  Hero(
                    tag: 'polygon',
                    child: SvgPicture.asset('assets/logo.svg'),
                  ),
                  SizedBox(height: 50),

                  // * Welcome text
                  Text(
                    'Welcome',
                    style: GoogleFonts.righteous(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),

                  // * Textfields + login button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CryptoTextfield(labelText: 'username'),
                        SizedBox(height: 10),
                        CryptoTextfield(labelText: 'password'),
                        SizedBox(height: 10),
                        CryptoButton(
                          buttonText: 'Login',
                          onTap: () => Get.to(
                            () => HomeScreen(),
                            transition: Transition.fadeIn,
                            duration: Duration(milliseconds: 400),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // * Dont have an acct?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.righteous(
                          color: Color(0xFFFFFEFE),
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.righteous(
                            color: Color(0xFFE14CFF),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
