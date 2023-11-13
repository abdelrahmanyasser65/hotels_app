import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.onTap, required this.icon}) : super(key: key);
final Function()onTap;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:onTap ,
      child: Container(
        height: 5.h,width: 6.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: Colors.blue,
              width: .2.h,
            )
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
