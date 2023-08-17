import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:line_icons/line_icon.dart';

import '../../../core/components/textfield/base_icon_textfield.dart';
import '../../../core/init/lang/locale_keys.g.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    required this.textEditingController,
    super.key,
  });
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return BaseIconFormTextField(
      controller: textEditingController,
      label: LocaleKeys.authentication_email,
      icon: const LineIcon.envelope(),
      validator: (value) {
        if (value.ext.isNullOrEmpty) {
          return LocaleKeys.authentication_validator_blankArea.tr();
        } else if (value != null && !value.ext.isValidEmail) {
          return LocaleKeys.authentication_validator_emailNotValid.tr();
        }
        return null;
      },
    );
  }
}
