import 'package:auvnet/core/functions/build_border.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    required this.prefixIcon,
    this.isPassword = false,
    this.textInputType,
  });
  final String text;
  final IconData prefixIcon;
  final bool isPassword;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0x33C4C4C4),
        focusedBorder: builldBorder(),
        enabledBorder: builldBorder(),
        border: builldBorder(),
        hintText: text,
        hintStyle: AppTextStyles.light14.copyWith(
          color: Colors.black.withAlpha(128),
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.black.withAlpha((0.3 * 255).toInt()),
        ),
      ),
    );
  }
}
