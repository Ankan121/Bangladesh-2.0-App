import 'package:bangladesh_2point0/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants/text.dart';
import '../../global_widgets/carousel_slider.dart';
import '../home_screen/died_list.dart';

class Add_List_Screen extends StatefulWidget {
  const Add_List_Screen({super.key});

  @override
  State<Add_List_Screen> createState() => _Add_List_ScreenState();
}

class _Add_List_ScreenState extends State<Add_List_Screen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // A key for managing the form
  String _fast_name = ''; // Variable to store the entered name
  String _last_name = '';
  String _email = ''; // Variable to store the entered email
  String _passwored = '';
  String _re_password = '';

  void _submitForm() {
    // Check if the form is valid
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      //Get.to(ApplyScreen());
      print('Name: $_fast_name'); // Print the name
      print('Mobile Number: $_last_name'); // Print the email
      print("Email ID/Phone Number: $_email" );
      print("Password: $_passwored");
      print("Re-enter Password: $_re_password");
    }
  }



  @override
  Widget build(BuildContext context) {

    final TextStyle? largeblack = TextFormate(colors: Colors.black).textLargeFormate(context);
    final TextStyle? mediumblack = TextFormate(colors: Colors.black).textMediumFormate(context);
    final TextStyle? smallblack = TextFormate(colors: Colors.black).textSmallFormate(context);

    final TextStyle? largewhite = TextFormate(colors: Colors.white).textLargeFormate(context);
    final TextStyle? mediumwhite = TextFormate(colors: Colors.white).textMediumFormate(context);
    final TextStyle? smallwhite = TextFormate(colors: Colors.white).textSmallFormate(context);


    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: AppBar(
        backgroundColor: AppColor.appbar,
        title: Text('Add Data 2.0',style: largewhite,),
      centerTitle: true,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40.h,),
              Container(
                width: double.infinity.w,
                height: 750.h,
                //height: .h,
                decoration: BoxDecoration(
                    color: AppColor.bodycolor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.r),
                      topLeft: Radius.circular(30.r),
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h,),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Form(
                            key: _formKey, // Associate the form key with this Form widget
                            child: Padding(
                              padding: EdgeInsets.all(0.0).r,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0).r,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0).r,
                                        child: Text("Title",style: largeblack,),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                              borderRadius: BorderRadius.circular(40.r),
                                            ),

                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(40.r),
                                            ),
                                            labelText: "Enter Title",
                                            labelStyle: TextStyle(
                                                color: Colors.black
                                            ),

                                          ), // Label for the name field
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter your Fast Name.'; // Return an error message if the name is empty
                                            }
                                            return null; // Return null if the name is valid
                                          },
                                          onSaved: (value) {
                                            _fast_name = value!; // Save the entered name
                                          },
                                        ),
                                      ),

                                      SizedBox(height: 20.h,),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0).r,
                                        child: Text("Died Date",style: largeblack),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                              borderRadius: BorderRadius.circular(40.r),
                                            ),

                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(40.r),
                                            ),
                                            labelText: "Died Date",
                                            labelStyle: TextStyle(
                                                color: Colors.black,
                                            ),

                                          ), // Label for the name field
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter your Fast Name.'; // Return an error message if the name is empty
                                            }
                                            return null; // Return null if the name is valid
                                          },
                                          onSaved: (value) {
                                            _fast_name = value!; // Save the entered name
                                          },
                                        ),
                                      ),

                                      SizedBox(height: 20.0.h),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0).r,
                                        child: Text("Description",style: largeblack),
                                      ),
                                      Container(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(vertical: 60.0.h, horizontal: 10.0.w),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                             //borderRadius: BorderRadius.circular(40.r),
                                            ),

                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(40.r),
                                            ),
                                            labelText: "Enter Description",
                                            labelStyle: TextStyle(
                                                color: Colors.black
                                            ),

                                          ), // Label for the name field
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter your Fast Name.'; // Return an error message if the name is empty
                                            }
                                            return null; // Return null if the name is valid
                                          },
                                          onSaved: (value) {
                                            _fast_name = value!; // Save the entered name
                                          },
                                        ),
                                      ),

                                      SizedBox(height: 30.0.h),
                                      Center(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              //backgroundColor: AppColor.whiteall,
                                              shadowColor: Colors.greenAccent,
                                              elevation: 3,
                                              fixedSize: Size(306.w, 48.h), // specify width, height
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20.r,))),
                                          onPressed: () {},
                                          //_submitForm, // Call the _submitForm function when the button is pressed
                                          child: Text('Add',style: context.textTheme.titleLarge?.copyWith(color: AppColor.appbar)), // Text on the button
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
