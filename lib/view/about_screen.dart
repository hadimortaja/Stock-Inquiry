import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: CustomText(
            "About",
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: AppColors.primaryColor,
                          size: 20.h,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    "ACCOUNT",
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  CustomText(
                    "SOFT",
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
              CustomText(
                "ENTERPRISE SDN BHD",
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.gray,
              ),
              SizedBox(
                height: 35.h,
              ),
              CustomText(
                "Product ID: ef70398602a07eb2",
                fontSize: 18.sp,
                color: AppColors.black,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onTap: () {},
                cWidth: 180.w,
                cHeight: 50.h,
                title: "REMOVE ADS @ MYR 299",
              ),
              SizedBox(
                height: 200.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                "181,1ST FLOOR,HUI SING COMMERCIAL CENTRE,93350",
                fontSize: 14.sp,
                color: AppColors.black,
              ),
              CustomText(
                "KUCHING,SARAWAK.",
                fontSize: 14.sp,
                color: AppColors.black,
              ),
              CustomText(
                "Tel:082-462 181 Fax: 082-463 181",
                fontSize: 14.sp,
                color: AppColors.black,
              ),
              CustomText(
                "Version 7.6 Rev 14",
                fontSize: 14.sp,
                color: AppColors.gray.withOpacity(0.23),
              ),
            ],
          ),
        ));
  }
}
