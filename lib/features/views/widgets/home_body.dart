import 'package:flutter/material.dart';
import 'package:hotols_go/core/constants.dart';
import 'package:hotols_go/features/views/widgets/first_said.dart';
import 'package:hotols_go/features/views/widgets/second_said.dart';
import 'package:sizer/sizer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
         child: Container(
           height: 100.h,
           width: double.infinity,

           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage(backImage,),
               fit: BoxFit.fill
             )
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:const [
               FirstSaid(),
               SecondSaid(),
             ],
           ),
         ),
       )

    ;
  }
}
