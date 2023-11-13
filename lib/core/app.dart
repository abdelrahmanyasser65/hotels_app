import 'package:flutter/material.dart';
import 'package:hotols_go/core/app_router.dart';
import 'package:sizer/sizer.dart';
class HotelsApp extends StatelessWidget {
  const HotelsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,s,d){
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
