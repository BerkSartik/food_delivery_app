import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BaseElevatedButton extends StatelessWidget {
  const BaseElevatedButton({
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    super.key,
  });

  final String buttonText;
  final Future<void> Function() onPressed;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          padding: context.padding.normal,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: context.general.textTheme.titleMedium!.copyWith(
              color: textColor,
              letterSpacing: 0.32,
            ),
          ),
        ),
      ),
    );
  }
}
