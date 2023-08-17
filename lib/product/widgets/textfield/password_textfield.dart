import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_icons/line_icon.dart';

import '../../../core/components/textfield/base_icon_textfield.dart';
import '../../../core/init/lang/locale_keys.g.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({required this.controller, super.key});

  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;
  final int _minimumLength = 8;

  void _changeView() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseIconFormTextField(
      controller: widget.controller,
      label: LocaleKeys.authentication_password,
      icon: const LineIcon.lock(),
      secure: _isSecure,
      suffixIcon: IconButton(
        onPressed: _changeView,
        icon: _isSecure ? const LineIcon.eye() : const LineIcon.eyeSlash(),
      ),
      validator: _controlValidate,
    );
  }

  String? _controlValidate(String? value) {
    if (value.ext.isNullOrEmpty) {
      return LocaleKeys.authentication_validator_blankArea.tr();
    } else if (value!.length < _minimumLength) {
      return LocaleKeys.authentication_validator_passwordMinLength.tr();
    }
    return null;
  }
}
