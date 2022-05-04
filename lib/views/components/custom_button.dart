import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pick_me/configs/const.dart';
import 'package:pick_me/configs/size_config.dart';

class CustomButton extends StatelessWidget {
  final onPressed;
  final text;
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 1.5 * SizeConfig.blockSizeVertical,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: oceanBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        fixedSize: Size(
          SizeConfig.screenWidth * 0.85,
          SizeConfig.screenHeight * 0.07,
        ),
      ),
    );
  }
}
