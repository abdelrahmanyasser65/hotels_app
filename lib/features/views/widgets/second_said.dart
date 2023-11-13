import 'package:flutter/material.dart';
import 'package:hotols_go/core/widgets/custom_text.dart';
import 'package:hotols_go/features/views/widgets/find_hotels.dart';
import 'package:sizer/sizer.dart';

import '../../../core/widgets/bottom_sheet.dart';
import 'custom_form_filed.dart';
DateTimeRange selectDate=DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now());
class SecondSaid extends StatefulWidget {

  const SecondSaid({Key? key}) : super(key: key);

  @override
  State<SecondSaid> createState() => _SecondSaidState();
}

class _SecondSaidState extends State<SecondSaid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[800]!, Colors.blue[200]!],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight),
                borderRadius: BorderRadius.circular(15)),
            height: 43.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 1.5.h, vertical: 2.h),
            child: Column(
              children: [
                CustomFormFiled(
                  hint: 'Select City',
                  outlineInputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(color: Colors.blue, width: .1.h)),
                  onTap: () {},
                  padding: 5,
                ),
                SizedBox(
                  height: 1.4.h,
                ),
                InkWell(
                  onTap: ()async{
                    final DateTimeRange?dateTimeRange=await showDateRangePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000));
                    if(dateTimeRange!=null){
                      setState(() {
                        selectDate=dateTimeRange;
                      });
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: 8.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(23)),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Colors.blueAccent, width: .2.h)),
                      padding: EdgeInsets.only(right: 1.h, left: 1.h),
                      child: Row(
                        children: [
                          CustomText(
                          text:  selectDate.duration.inDays==0?"select date":
                          "${selectDate.start.year} - ${selectDate.start.month} - ${selectDate.start.day} ==> ${selectDate.end.year} - ${selectDate.end.month} - ${selectDate.end.day}",
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue.shade400),

                          const Spacer(),
                        selectDate.duration.inDays==0?  Container():InkWell(
                          onTap: (){
                            setState(() {
                              selectDate=DateTimeRange(
                                  start: DateTime.now(),
                                  end: DateTime.now());
                            });
                          },
                          child: const Icon(
                              Icons.close,
                              color: Colors.grey,
                            ),
                        ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.4.h,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 8.5.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23)),
                  child: Row(
                    children: [
                      CustomText(
                      text:  "Select Nationality",

                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue.shade400),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.4.h,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 8.5.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23)),
                  child: Row(
                    children: [
                      CustomText(
                        text:"1 Room, 2 Adult, 0 Children",

                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue.shade400),

                      const Spacer(),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                              isScrollControlled: true,
                              builder: (context) {
                                return const CustomBottomSheet();
                              });
                        },
                        child: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          const FindHotels()
        ],
      ),
    );
  }
}
