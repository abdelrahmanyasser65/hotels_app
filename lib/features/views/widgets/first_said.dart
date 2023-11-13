import 'package:flutter/material.dart';
import 'package:hotols_go/core/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

import 'my_custom_clipper.dart';
class FirstSaid extends StatelessWidget {
  const FirstSaid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        margin: EdgeInsets.only(
            top: 37.h,
            left: 2.h,
          bottom: 1.5.h
        ),

          color:Colors.blue.shade800,

        height: 8.h,
        width: 26.h,
        padding: EdgeInsets.symmetric(
            vertical: 2.h,
            horizontal: 1.h
        ),
        child: CustomText(
         text: "Hotels Search",
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold

        ),
      ),
    );
  }
}
