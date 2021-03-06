import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_inquiry/widgets/custom_text.dart';

class Item extends StatelessWidget {
  final String? title;
  final String? hint;
  final double? sized;
  final double? cHeight;
  final Widget? child;
  final bool? hasFocus;
  final Function()? onTap;
  final FontWeight? fontWeight;
  Item(
      {this.title,
      this.hint,
      this.cHeight,
      this.sized,
      this.child,
      this.fontWeight,
      this.hasFocus,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: 65.w,
              ),
              child: CustomText(
                title ?? "",
                fontSize: 13.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: sized ?? 0.w,
            ),
            Expanded(
              child: Container(
                width: Get.width,
                height: cHeight ?? 30.h,
                // color: AppColors.secondaryColor,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0.w, top: 10.h),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),

                    decoration: InputDecoration(
                      hintText: hint ?? "",
                      // border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                      ),
                    ),
                    enableInteractiveSelection: hasFocus == true
                        ? true
                        : false, // will disable paste operation
                    focusNode: hasFocus == true
                        ? AlwaysEnabledFocusNode()
                        : AlwaysDisabledFocusNode(),
                  ),
                ),
              ),
            ),
            child != null
                ? SizedBox(
                    width: 5.w,
                  )
                : SizedBox(
                    height: 0.0,
                    width: 0.0,
                  ),
            child ??
                SizedBox(
                  height: 0.0,
                  width: 0.0,
                ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class AlwaysEnabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => true;
}
