import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotols_go/core/constants.dart';
import 'package:hotols_go/core/widgets/button_widget.dart';
import 'package:hotols_go/core/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

bool valSwitch = false;
int rooms=0;
int adults=0;
int children=0;

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.black.withOpacity(0.2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 8.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 13.h,
                ),
                CustomText(
                    text: "Rooms and Guests",
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 14.sp),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.5.h),
            height: 8.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.5.h),
            child: Row(
              children: [
                CustomText(
                    text: "Rooms",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                const Spacer(),
                ButtonWidget(onTap: () {
                  if(rooms!=0){
                    setState(() {
                      rooms--;
                    });
                  }
                }, icon: Icons.remove),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                      text:  "$rooms",
                      color: Colors.black,
                      fontWeight: FontWeight.w400, fontSize: 14.sp),
                ),
                ButtonWidget(onTap: () {
                  setState(() {
                    rooms++;
                  });
                }, icon: Icons.add),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2.5.h),
            height: 33.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            padding: EdgeInsets.symmetric(
              vertical: 2.h,
              horizontal: 1.5.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  color: Colors.black,
                 text: "Room 1",
                  fontWeight: FontWeight.w500, fontSize: 13.sp),

                SizedBox(
                  height: 1.5.h,
                ),
                Row(
                  children: [
                    CustomText(
                    text:  "Adults",

                          fontSize: 15.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),

                    const Spacer(),
                    ButtonWidget(onTap: () {
                      if(adults!=0){
                        setState(() {
                          adults--;
                        });
                      }
                    }, icon: Icons.remove),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  CustomText(
                          text:  "$adults",
                          color: Colors.black,
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                    ),
                    ButtonWidget(onTap: () {
                      if(adults!=4){
                        setState(() {
                          adults++;
                        });
                      }
                    }, icon: Icons.add),
                  ],
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Row(
                  children: [
                    CustomText(
                     text: "Children",

                          fontSize: 15.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),

                    const Spacer(),
                    ButtonWidget(onTap: () {
                      if(children!=0){
                        setState(() {
                          children--;
                        });
                      }
                    }, icon: Icons.remove),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                      text:  "$children",
                       color: Colors.black,
                            fontWeight: FontWeight.w400, fontSize: 14.sp),

                    ),
                    ButtonWidget(onTap: () {
                      if(children!=2){
                        setState(() {
                          children++;
                        });
                      }
                    }, icon: Icons.add),
                  ],
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 2.h,
                    ),
                    CustomText(
                        text:   "Age of child 1",

                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),

                    const Spacer(),
                    CustomText(
                        text: "14 years",

                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),

                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    SizedBox(
                      width: 2.h,
                    ),
                    CustomText(
                   text:   "Age of child 2",

                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),

                    const Spacer(),
                    CustomText(
                     text: "14 years",

                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),

                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.5.h),
            height: 8.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.5.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                       text:   "Pet-friendly",
                              fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.black,),

                        SizedBox(
                          width: 1.h,
                        ),
                        Image.asset(
                          warning,
                          height: 3.h,
                          width: 3.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    CustomText(
                      text:'only show stays that allow pets',
                      color: Colors.grey, fontSize: 12.sp),

                  ],
                ),
                const Spacer(),
                Transform.scale(
                  scale: 1.1,
                  child: CupertinoSwitch(
                    value: valSwitch,
                    onChanged: (val) {
                      setState(() {
                        valSwitch = val;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(
                top: 5.h,
                left: 2.5.h,
                right: 2.5.h,
              ),
              height: 6.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.blue),
              child: Center(
                child: CustomText(
                text:  "Apply",

                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
