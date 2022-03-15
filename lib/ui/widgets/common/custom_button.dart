import '../../config/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String? txt;
  final void Function()? onPressedFunc;
  const CustomButton({Key? key, required this.txt, required this.onPressedFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunc,
      child: Text(
        txt!,
        style: GoogleFonts.mallanna(
          color: AppColors.primaryDark,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
        alignment: Alignment.center,
        backgroundColor: MaterialStateProperty.all(AppColors.primaryLight),
        elevation: MaterialStateProperty.all(5.0),
        shadowColor: MaterialStateProperty.all(AppColors.primaryDark),
        overlayColor: MaterialStateProperty.all(AppColors.highlightColor),
      ),
    );
  }
}
