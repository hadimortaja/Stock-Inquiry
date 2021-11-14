import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/view/database_settings_screen.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageDBScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CustomText(
          "Manage Database",
          color: Colors.white,
        ),
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
                "Database List:",
                color: AppColors.primaryColor,
                fontSize: 16.sp,
              ),
              Container(
                width: Get.width,
                height: 560.h,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.primaryColor, width: 2.w)),
                child: SizedBox(
                  width: Get.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return CustomText("");
                    },
                    itemCount: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => DatabaseSettingsScreen());
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outline_outlined,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: CustomText(
                        "Add Database to List",
                        color: AppColors.primaryColor,
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
