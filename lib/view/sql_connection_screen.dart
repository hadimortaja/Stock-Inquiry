import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/widgets/Item.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';
import 'package:stock_inquiry/widgets/custom_text_form_field.dart';

class SqlConnectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CustomText("SQL Database Setting", color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                label: "Company Name",
              ),
              CustomTextFormField(
                label: "Server",
              ),
              CustomTextFormField(
                label: "Database Name",
              ),
              CustomTextFormField(
                label: "Username",
              ),
              CustomTextFormField(
                label: "Password",
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    "Load Default",
                    color: AppColors.primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    "Clear",
                    color: AppColors.primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: Get.width,
                height: 30.h,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.primaryColor, width: 2.w)),
                child: Center(
                  child: CustomText(
                    "*Please test connection before saving",
                    color: AppColors.primaryColor,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomButton(
                onTap: () {},
                cWidth: Get.width,
                cHeight: 50.h,
                title: "TEST CONNECTION",
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomButton(
                onTap: () {},
                cWidth: Get.width,
                cHeight: 50.h,
                title: "SAVE AND CLOSE",
                color: AppColors.primaryColor.withOpacity(0.25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
