import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_up/core/app_route.dart';
import 'package:pull_up/utils/app_colors.dart';
import 'package:pull_up/utils/app_icons.dart';
import 'package:pull_up/utils/app_images.dart';
import 'package:pull_up/utils/app_string.dart';
import 'package:pull_up/view/widget/custom_image.dart';
import 'package:pull_up/view/widget/text/custom_text.dart';

import '../../widget/home_product_item.dart';
import '../navBar/navbar.dart';

class LocatedShop extends StatelessWidget {
  LocatedShop({super.key});

  List nearby = [
    {
      "image": AppImages.located,
      "title": AppString.surpriseBag,
      "subTitle": AppString.charleyStore
    },
    {
      "image": AppImages.located,
      "title": AppString.surpriseBag,
      "subTitle": AppString.charleyStore
    },
  ];

  List topRated = [
    {
      "image": AppImages.located,
      "title": AppString.surpriseBag,
      "subTitle": AppString.charleyStore
    },
    {
      "image": AppImages.located,
      "title": AppString.surpriseBag,
      "subTitle": AppString.charleyStore
    },
    {
      "image": AppImages.located,
      "title": AppString.surpriseBag,
      "subTitle": AppString.charleyStore
    },
    {
      "image": AppImages.located,
      "title": AppString.surpriseBag,
      "subTitle": AppString.charleyStore
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: CustomText(
          text: AppString.weJustKnowThePlace,
          color: AppColors.white50,
          textAlign: TextAlign.start,
          fontSize: 24.sp,
        ),
        actions: [
          Row(
            children: [
              GestureDetector(
                  onTap: () => Get.toNamed(AppRoute.changeLocation),
                  child: CustomImage(imageSrc: AppIcons.location)),
              SizedBox(
                width: 8.w,
              ),
              GestureDetector(
                child: const Icon(
                  Icons.favorite,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(
                width: 28.w,
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 24.h),
        child: Column(
          children: [
            TextFormField(
              cursorColor: AppColors.white50,
              decoration: InputDecoration(
                hintText: AppString.searchForKeywords,
                hintStyle: const TextStyle(color: AppColors.white50),
                contentPadding:
                EdgeInsets.symmetric(vertical: 4.h, horizontal: 16.w),
                suffixIcon: const Icon(
                  Icons.search_sharp,
                  color: AppColors.white50,
                ),
                border: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: AppColors.white50, width: 1.w),
                    borderRadius: BorderRadius.circular(10.r)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: AppColors.white50, width: 1.w),
                    borderRadius: BorderRadius.circular(10.r)),
              ),
            ),
            Align(
                alignment: FractionalOffset.centerLeft,
                child: CustomText(
                  text: AppString.quick,
                  color: AppColors.white50,
                  fontSize: 20.sp,
                  top: 21.h,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 200.h,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 16.w,
                    mainAxisExtent: 150.w,
                    crossAxisSpacing: 16.w),
                itemCount: topRated.length,
                itemBuilder: (context, index) {
                  var item = topRated[index];
                  return HomeProductItem(
                    image: item['image'],
                    title: item['title'],
                    subTitle: item['subTitle'],
                  );
                },
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppString.nearby,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: AppColors.white50,
                ),
                CustomText(
                  text: AppString.seeAll,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.white50,
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 200.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 190.h,
                    crossAxisSpacing: 34.w),
                itemCount: nearby.length,
                itemBuilder: (context, index) {
                  var item = nearby[index];
                  return HomeProductItem(
                    image: item['image'],
                    title: item['title'],
                    subTitle: item['subTitle'],
                  );
                },
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppString.topRated,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: AppColors.white50,
                ),
                CustomText(
                  text: AppString.seeAll,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.white50,
                ),
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  mainAxisExtent: 190.h,
                  crossAxisSpacing: 34.w),
              itemCount: topRated.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var item = topRated[index];
                return HomeProductItem(
                  image: item['image'],
                  title: item['title'],
                  subTitle: item['subTitle'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
