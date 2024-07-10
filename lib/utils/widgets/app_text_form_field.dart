import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyperhire/utils/app_text_style.dart';

class AppTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final int? maxLines;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const AppTextFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.textStyle,
    this.hintStyle,
    this.maxLines,
    this.validator,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      validator: validator,
      onChanged: onChanged,
      style: textStyle ?? GoogleFonts.inter(),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppTextStyle().dmSansSubtitle(),
        hintText: hintText,
        hintStyle: AppTextStyle().dmSansSubtitle(),
        border: OutlineInputBorder(),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
