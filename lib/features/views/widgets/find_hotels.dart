import 'package:flutter/material.dart';
import 'package:hotols_go/core/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
class FindHotels extends StatelessWidget {
  const FindHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(text:'find hotels',

              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 17.sp

        ),
        SizedBox(width: 1.h,),
        Icon(
          Icons.search,
          color: Colors.white,
          size: 5.h,
        )
      ],
    );
  }
}
