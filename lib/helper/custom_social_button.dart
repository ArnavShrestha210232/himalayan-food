import 'package:eccomerce/constant/color_constant.dart';
import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    super.key,
    // required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
    required this.icon,
  });
  // final String buttonText;
  final Color buttonColor;
  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      child: MaterialButton(
        shape: CircleBorder(),
        color: buttonColor,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: ColorConstant.whiteColor,
            ),
            // Text(
            //   buttonText,
            //   style: TextStyle(color: ColorConstant.whiteColor),
            // ),
          ],
        ),
      ),
    );
  }
}
