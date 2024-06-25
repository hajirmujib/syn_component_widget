import 'package:flutter/material.dart';
import 'package:syn_common_widget/themes/themes.dart';

InputDecoration inputOutlineDecorationStyle({
  String? helper,
  String? hintText,
  Widget? prefixIcon,
  Widget? sufficIcon,
  EdgeInsetsGeometry? contentPadding,
  double? radius,
}) =>
    InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      filled: false,
      helperText: helper,
      helperStyle: AppTypography.extraSmallRegular.copyWith(
        fontWeight: FontWeight.w400,
      ),
      hintStyle:
          AppTypography.smallRegular.copyWith(color: const Color(0xFFc0c3cb)),
      hintText: hintText,
      contentPadding: contentPadding ??
          const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      prefixIcon: prefixIcon,
      suffixIcon: sufficIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 10.0),
        gapPadding: 0,
        borderSide: BorderSide(
          color: CommonColors.gray[200]!,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 10.0),
        borderSide: BorderSide(
          color: CommonColors.gray[200]!,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 10.0),
        borderSide: BorderSide(
          color: CommonColors.gray[200]!,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 10.0),
        borderSide: const BorderSide(
          color: Colors.red,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 10.0),
        borderSide: BorderSide(
          color: CommonColors.gray[200]!,
        ),
      ),
    );
