import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_up/utils/app_colors.dart';

import '../../../controller/profile_controller/profile_controller.dart';


class ProfileImage extends StatelessWidget {
  final String imageURl;

  const ProfileImage({super.key, required this.imageURl});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (controller) {
      return SizedBox(
        height: 108.w,
        width: 108.w,
        child: Stack(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  controller.selectImageGallery();
                },
                child: Container(
                  height: 108.w,
                  width: 108.w,
                  decoration: BoxDecoration(
                      image: controller.image != null
                          ? DecorationImage(
                        image: FileImage(
                          File(controller.image!),
                        ),
                        fit: BoxFit.cover,
                      )
                          : DecorationImage(
                        image: AssetImage(imageURl),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      border:
                      Border.all(color: AppColors.white50, width: 3.w)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.selectImageCamera();
              },
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: AppColors.white50, shape: BoxShape.circle),
                  child: Icon(
                    Icons.photo_camera_outlined,
                    size: 18.sp,
                    color: AppColors.grey900,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}