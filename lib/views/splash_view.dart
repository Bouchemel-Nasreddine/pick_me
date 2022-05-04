import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pick_me/configs/const.dart';
import 'package:pick_me/viewmodels/splash_viewmodel.dart';
import 'package:pick_me/views/components/custom_button.dart';
import 'package:provider/provider.dart';

import '../configs/size_config.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: erieBlack,
      body: SafeArea(
        child: Container(
          height: SizeConfig.screenHeight * 0.75,
          width: SizeConfig.screenWidth,
          padding: EdgeInsets.only(
            top: SizeConfig.screenHeight * 0.05,
          ),
          decoration: const BoxDecoration(
            color: iris,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Pick Me',
                    style: TextStyle(
                      fontFamily: 'Uber Move',
                      color: Colors.white,
                      fontSize: 4 * SizeConfig.blockSizeVertical,
                    ),
                  ),
                  Text(
                    'Get me there',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 2 * SizeConfig.blockSizeVertical,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: SizeConfig.screenHeight * 0.35,
                left: SizeConfig.screenWidth * 0.3,
                child: Image.asset(
                  "assets/car.png",
                  width: SizeConfig.screenWidth,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Consumer<SplashViewModel>(
        builder: (context, value, child) => CustomButton(
          text: 'Get Started',
          onPressed: () => value.goToPhoneLogin(context),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
