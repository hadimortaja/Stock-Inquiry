import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/view/sql_connection_screen.dart';
import 'package:stock_inquiry/widgets/Item.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class DatabaseSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: CustomText(
          "Database Setting",
          color: Colors.white,
        ),
        actions: [
          PopupMenuButton<int>(
            // color: Colors.black,
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                  value: 0,
                  child: CustomText(
                    "Use SQL Connection",
                    fontSize: 14.sp,
                  )),
            ],
            onSelected: (item) => SelectedItem(context, item),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
          child: Column(
            children: [
              Item(
                hint: " Company Name",
                cHeight: 50.h,
                fontWeight: FontWeight.bold,
              ),
              Item(
                hint: " Company Address 1",
                cHeight: 50.h,
                fontWeight: FontWeight.bold,
              ),
              Item(
                hint: " Company Address 2",
                cHeight: 50.h,
                fontWeight: FontWeight.bold,
              ),
              Item(
                hint: " Company Address 3",
                cHeight: 50.h,
                fontWeight: FontWeight.bold,
              ),
              Item(
                hint: " Company Address 4",
                cHeight: 50.h,
                fontWeight: FontWeight.bold,
              ),
              Item(
                hint: "Database Name",
                cHeight: 50.h,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomButton(
                cWidth: Get.width,
                cHeight: 40.h,
                title: "SCAN QR CODE",
              ),
            ],
          ),
        ),
      ),
    );
  }

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Get.to(() => SqlConnectionScreen());
        break;
    }
  }
}
