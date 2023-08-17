import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/core/constants/app/color_constants.dart';
import 'package:kartal/kartal.dart';

class BaseIconFormTextField extends StatelessWidget {
  const BaseIconFormTextField({
    required this.label,
    required this.icon,
    super.key,
    this.secure,
    this.validator,
    this.controller,
    this.suffixIcon,
  });
  final String label;
  final Icon icon;

  final bool? secure;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.horizontalMedium,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        obscureText: secure ?? false,
        validator: validator,
        decoration: InputDecoration(
          fillColor: Colors.white,
          isCollapsed: true,
          filled: true,
          hintText: label.tr(),
          hintStyle: context.general.textTheme.labelLarge!.copyWith(
            color: ColorConstants.GRAY_2,
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(21),
          suffixIcon: suffixIcon,
          prefixIcon: icon,
          prefixIconColor: ColorConstants.GRAY_2,
        ),
      ),
    );
  }
}
