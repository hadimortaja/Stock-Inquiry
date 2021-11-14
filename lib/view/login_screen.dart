import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/view/about_screen.dart';
import 'package:stock_inquiry/view/home_screen.dart';
import 'package:stock_inquiry/view/manage_db_screen.dart';
import 'package:stock_inquiry/widgets/custom_button.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: CustomText(
            "Stock Inquiry",
            color: AppColors.whiteColor,
          ),
          actions: [
            PopupMenuButton<int>(
              // color: Colors.black,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                    value: 0,
                    child: CustomText(
                      "Manage Database",
                      fontSize: 14.sp,
                    )),
                PopupMenuItem<int>(
                    value: 1,
                    child: CustomText(
                      "About",
                      fontSize: 14.sp,
                    )),
                PopupMenuItem<int>(
                    value: 2,
                    child: CustomText(
                      "Exit",
                      fontSize: 14.sp,
                    )),
              ],
              onSelected: (item) => SelectedItem(context, item),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: Get.width,
                  height: 400.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.primaryColor, width: 2.w)),
                  child: SizedBox(
                    width: Get.width,
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return CustomText("");
                      },
                      itemCount: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomText(
                        "Login Here",
                        color: AppColors.primaryColor,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          border: UnderlineInputBorder(),
                          labelText: 'User ID',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.primaryColor),
                          ),
                          border: UnderlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomButton(
                        onTap: () {
                          Get.to(() => HomeScreen());
                        },
                        cWidth: Get.width,
                        cHeight: 40.h,
                        title: "LOGIN",
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Get.to(() => ManageDBScreen());
        break;
      case 1:
        Get.to(() => AboutScreen());
        break;
      case 2:
        SystemNavigator.pop();
        break;
    }
  }
}
