




import 'package:flutter/material.dart';
import 'package:task_haram/widgets/my_text.dart';

import '../constants.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.backgroundColor,
    this.titleColor,
    this.verticalMargin,
    this.horizontalMargin,
    this.borderColor,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? titleColor;
  final double? verticalMargin;
  final double? horizontalMargin;
  final Color? borderColor;

  BorderRadius get _borderRadius => BorderRadius.circular(15);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalMargin ?? 0,
        vertical: verticalMargin ?? 0,
      ),
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onPressed,
        child: Container(
          // height: 45,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          child: MyText(
            data: title,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: titleColor ?? Colors.white,
          ),
          decoration: BoxDecoration(
            color: backgroundColor ?? kPrimaryColor,
            borderRadius: _borderRadius,
            border: Border.all(
              color: borderColor ?? kPrimaryColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}