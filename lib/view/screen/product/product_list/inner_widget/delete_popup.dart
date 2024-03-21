import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_up/core/app_route.dart';
import 'package:pull_up/utils/app_colors.dart';
import 'package:pull_up/utils/app_icons.dart';
import 'package:pull_up/utils/app_string.dart';
import 'package:pull_up/view/widget/button/custom_button.dart';
import 'package:pull_up/view/widget/custom_image.dart';
import 'package:pull_up/view/widget/text/custom_text.dart';

class DeleteItemPopUp {
  static itemDeletePopUp() {
    showDialog(
        context: Get.context!,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.cancel_outlined))),
                SizedBox(
                  height: 30.h,
                ),
                CustomImage(
                  imageSrc: AppIcons.right,
                ),
                CustomText(
                  text: AppString.successfulDeleted,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.deepOrange,
                  bottom: 40.h,
                  top: 10.h,
                ),
              ],
            ),
          );
        });
  }
}
