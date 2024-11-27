import 'package:flutter/material.dart';
import 'package:hospital_management_system_portfolio/utils/constants/colors.dart';
import 'package:hospital_management_system_portfolio/utils/constants/typography.dart';
import 'package:hospital_management_system_portfolio/utils/constants/values.dart';

class ReusableTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isPasswordField;
  final String? Function(String?)? validator;
  final int? maxLines;

  const ReusableTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPasswordField = false,
    this.validator,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPasswordField,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: maxLines != null ? maxLines : null,
      cursorRadius: Radius.circular(
        ValueConstants.radius10Px(context),
      ),
      style: TypographyConstants.textStyle12Pt(
        context,
        color: ColorConstants.textHighEm,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TypographyConstants.textStyle12Pt(
          context,
          color: ColorConstants.textHighEm,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            ValueConstants.radius10Px(context),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: ValueConstants.padding10Px(context),
          horizontal: ValueConstants.padding10Px(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorConstants.textHighEm,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(
            ValueConstants.radius10Px(context),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorConstants.textHighEm,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(
            ValueConstants.radius10Px(context),
          ),
        ),
        errorStyle: TypographyConstants.textStyle10Pt(
          context,
          color: ColorConstants.accentRed,
        ),
      ),
      validator: validator,
    );
  }
}
