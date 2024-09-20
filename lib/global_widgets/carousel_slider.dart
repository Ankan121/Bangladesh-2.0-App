import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class Carousel_Slider extends StatefulWidget {
  const Carousel_Slider({super.key});

  @override
  State<Carousel_Slider> createState() => _Carousel_SliderState();
}

class _Carousel_SliderState extends State<Carousel_Slider> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_Controller>(builder: (homcon) {
      return SizedBox(     //imge slider start
        height: 250.h,
        width: double.infinity.w,
        child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
            ), items: homcon.imageslider.map((e) => Container(
            height: 200.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(e)),
            )
        ),
        ).toList()),
      );

    },);
  }
}

