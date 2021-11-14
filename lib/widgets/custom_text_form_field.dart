import 'package:flutter/material.dart';
import 'package:stock_inquiry/value/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  CustomTextFormField({this.label});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        border: UnderlineInputBorder(),
        labelText: label,
      ),
    );
  }
}
