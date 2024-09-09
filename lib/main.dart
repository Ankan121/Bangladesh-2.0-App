import 'package:bangladesh_2point0/controller/bindings.dart';
import 'package:bangladesh_2point0/routes/routes.dart';
import 'package:bangladesh_2point0/routes/routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child){
        return GetMaterialApp(
          initialBinding: ControllerBin(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: RouteNames.splash,
          onGenerateRoute: Routes.generateRoute,
        );
      },
    );
  }
}
