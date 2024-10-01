import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:bangladesh_2point0/controller/home_controller.dart';
import 'package:bangladesh_2point0/views/home_screen/died_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants/text.dart';
import '../../model/diedlistmodel.dart';

class Died_List extends StatefulWidget {
  const Died_List({super.key});

  @override
  State<Died_List> createState() => _Died_ListState();
}

class _Died_ListState extends State<Died_List> {

  @override
  void initState(){
    Get.find<Home_Controller>().setdiedlistmodel();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.grey[600]).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);

    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumwhite = TextFormate(colors: Colors.white).textMediumFormate(context);
    final TextStyle? smallwhite = TextFormate(colors: Colors.white).textSmallFormate(context);


    return GetBuilder<Home_Controller>(
      builder: (Home_Controller homcon) {
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(), // Disable ListView's own scrolling
          shrinkWrap: true, // Make the ListView take only as much space as needed
          itemCount: homcon.diedlistmodelresponse.length, // Number of items
          itemBuilder: (context, index) {
            print(homcon.diedlistmodelresponse[index]);
            print('all done');

            DiedList? diedListmodel = homcon.diedlistmodelresponse[index];

            String? titletext = '${diedListmodel.description}';
            String? firstLetter = titletext.substring(0,15);

            return Padding(
              padding: const EdgeInsets.all(15.0).r,
              child: InkWell(
                onTap: (){
                  Get.to(() => DiedListView(model: diedListmodel,));
                  print(diedListmodel.name);
                  print("all done");
                },
                child: Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset('${diedListmodel.img}',
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,),
                        ),
                        // Container(
                        //   height: 110.h,
                        //   width: 100.w,
                        //   decoration: BoxDecoration(
                        //     //border: Border.all(color: Color(0xff008000)),
                        //     borderRadius: BorderRadius.circular(10.r),
                        //     image: DecorationImage(
                        //         fit: BoxFit.fill,
                        //         image: AssetImage('${diedListmodel.img}'),
                        //         )),
                        //   ),
                        Padding(
                          padding: const EdgeInsets.all(8.0).r,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${diedListmodel.name}',style: largeblack, maxLines: 1, overflow: TextOverflow.ellipsis,),
                              Text('${diedListmodel.died}',style: mediumblack, maxLines: 1, overflow: TextOverflow.ellipsis,),
                              Text('${firstLetter}',style: mediumblack, maxLines: 1, overflow: TextOverflow.ellipsis,),
                              // Spacer(),
                              // Text('${diedListmodel.description}',style: mediumblack,maxLines: 1, overflow: TextOverflow.ellipsis,),
                            ],
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        //   children: [
                        //     Text('View All',style:context.textTheme.titleSmall?.copyWith(color: Color(0xff008000),),),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
