import 'package:eccomerce/constant/color_constant.dart';
import 'package:flutter/material.dart';

class Custom_bannerbutton extends StatelessWidget {
  final String text1;
  final String? text3;
  final void Function()? onPressed;
  final String buttonText;
  final bool isButton2;
  final String image;
  final String? buttonText2;
  final Color? textColor;
  final double? bottom;
  final double? right;
  const Custom_bannerbutton({
    super.key,
    required this.text1,
    required this.buttonText,
    required this.bottom,
    required this.right,
    this.onPressed,
    this.textColor,
    this.buttonText2,
    required this.image,
    required this.isButton2,
    this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
        Positioned(
          bottom: bottom,
          right: right,
          child: Container(
            width: isButton2
                ? MediaQuery.sizeOf(context).width * 0.66
                : MediaQuery.sizeOf(context).width * 0.55,
            height: isButton2
                ? MediaQuery.sizeOf(context).height * 0.12
                : MediaQuery.sizeOf(context).height * 0.15,
            decoration: const BoxDecoration(
              color: Colors.white60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      color: ColorConstant.secondaryColor,
                      splashColor: ColorConstant.primaryColor,
                      onPressed: () => onPressed,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        buttonText,
                        style: TextStyle(
                          color: ColorConstant.whiteColor,
                        ),
                      ),
                    ),
                    isButton2
                        ? MaterialButton(
                            color: ColorConstant.secondaryColor,
                            splashColor: ColorConstant.primaryColor,
                            onPressed: onPressed,
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              buttonText2 ?? '',
                              //buttonText2!,
                              style: TextStyle(
                                color: ColorConstant.whiteColor,
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
