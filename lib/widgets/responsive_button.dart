import 'package:flutter/material.dart';
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({
    Key? key,
    this.width,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.redColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    // this container we have placed the containter to add margin to the text
                    margin: const EdgeInsets.only(left: 20),
                    child: AppText(
                      text: "Rate the event",
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Container(
              // this container we have placed the containter to add margin to the arrow image
              margin: isResponsive == true
                  ? const EdgeInsets.only(right: 25)
                  : const EdgeInsets.only(right: 5, left: 5),
              child: Image.asset(
                "img/yellow-arrow.png",
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
