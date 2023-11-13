import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class CustomFormFiled extends StatelessWidget {
  const CustomFormFiled({Key? key,
    required this.outlineInputBorder,
    required this.onTap, this.suffixIcon, required this.padding, required this.hint}) : super(key: key);
 final OutlineInputBorder outlineInputBorder;
 final double padding;
 final Function()onTap;
 final Widget ?suffixIcon;
 final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding),
      height: 8.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(23)),
      child: TextFormField(
        textAlign: TextAlign.center,
        onTap:onTap ,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          enabled: false,
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: Colors.blue.shade400),
          filled: true,
          fillColor: Colors.white,
          disabledBorder:outlineInputBorder ,
          enabledBorder: outlineInputBorder,
        ),
      ),
    );
  }
}
