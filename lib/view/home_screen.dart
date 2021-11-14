import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  bool isShowDialog = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CustomText(
          "Stock Inquiry: HQ",
          color: AppColors.whiteColor,
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              CustomText(
                "Enter KeyWord Here:",
                color: AppColors.primaryColor,
                fontSize: 14.sp,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    width: Get.width,
                    height: 30.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(10.r)),
                  )),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomButton(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Country List'),
                              content: setupAlertDialoadContainer(),
                            );
                          });
                    },
                    cWidth: 100.w,
                    cHeight: 30.h,
                    title: "SCAN",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget setupAlertDialoadContainer() {
  return Container(
    height: 300.0, // Change as per your requirement
    width: 300.0, // Change as per your requirement
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Gujarat, India'),
        );
      },
    ),
  );
}
