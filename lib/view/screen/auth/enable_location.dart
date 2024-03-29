import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_up/core/app_route.dart';
import 'package:pull_up/utils/app_colors.dart';
import 'package:pull_up/utils/app_images.dart';
import 'package:pull_up/utils/app_string.dart';
import 'package:pull_up/view/widget/button/custom_button.dart';
import 'package:pull_up/view/widget/custom_image.dart';
import 'package:pull_up/view/widget/text/custom_text.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 28.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: AppString.enableLocation,
                fontSize: 24.sp,
                color: AppColors.white50,
                top: 60.h,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.start,
              ),
            ),
            CustomText(
              text: AppString.enableLocationDetails,
              color: AppColors.grey200,
              bottom: 47.h,
              textAlign: TextAlign.start,
            ),
            Center(
                child: CustomImage(
              imageSrc: AppImages.enableLocation,
              imageType: ImageType.png,
              size: 295,
            )),
            SizedBox(
              height: 129.h,
            ),
            CustomButton(
              titleText: AppString.turnOn,
              buttonWidth: double.infinity,
              onPressed: () => Get.toNamed(AppRoute.onboarding),
            ),
            CustomText(
              text: AppString.youCanAdjustYourLocation,
              color: AppColors.grey200,
              top: 29.h,
            )
          ],
        ),
      ),
    );
  }
}
