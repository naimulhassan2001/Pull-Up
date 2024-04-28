import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_up/controller/profile_controller/profile_controller.dart';
import 'package:pull_up/helper/prefs_helper.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_string.dart';
import '../../../../../utils/app_utils.dart';
import '../../../../widget/button/custom_button.dart';
import '../../../../widget/custom_loading.dart';
import '../../../../widget/text/custom_text.dart';
import '../../../../widget/text_field/custom_text_field.dart';

class EditProfileBusinessAccount extends StatefulWidget {
  EditProfileBusinessAccount({super.key});

  @override
  State<EditProfileBusinessAccount> createState() =>
      _EditProfileBusinessAccountState();
}

class _EditProfileBusinessAccountState
    extends State<EditProfileBusinessAccount> {
  final nameController = ValueNotifier<bool>(false);

  final numberController = ValueNotifier<bool>(false);

  final emailController = ValueNotifier<bool>(false);

  final desController = ValueNotifier<bool>(false);

  final websiteController = ValueNotifier<bool>(false);

  final hoursController = ValueNotifier<bool>(false);

  final locatorController = ValueNotifier<bool>(false);

  final formKey = GlobalKey<FormState>();

  ProfileController controller = Get.put((ProfileController()));

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        return Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(
                    text: AppString.businessName,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppString.showProfile,
                    fontWeight: FontWeight.w300,
                    fontSize: 10.sp,
                    right: 8.w,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  AdvancedSwitch(
                    height: 18.sp,
                    width: 36.w,
                    activeColor: AppColors.deepOrange,
                    controller: nameController,
                    initialValue: true,
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextField(
                hintText: AppString.businessName,
                controller: controller.nameController,
                keyboardType: TextInputType.name,
                fillColor: AppColors.transparent,
                borderColor: AppColors.white50,
                paddingVertical: 10.sp,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppString.thisFieldIsRequired;
                  }
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  CustomText(
                    text: AppString.phoneNumber,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppString.showProfile,
                    fontWeight: FontWeight.w300,
                    fontSize: 10.sp,
                    right: 8.w,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  AdvancedSwitch(
                    height: 18.sp,
                    width: 36.w,
                    activeColor: AppColors.deepOrange,
                    controller: numberController,
                    initialValue: true,
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextField(
                hintText: AppString.phoneNumber,
                controller: controller.numberController,
                keyboardType: TextInputType.number,
                fillColor: AppColors.transparent,
                borderColor: AppColors.white50,
                paddingVertical: 10.sp,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppString.thisFieldIsRequired;
                  }
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  CustomText(
                    text: AppString.emailAddress,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppString.showProfile,
                    fontWeight: FontWeight.w300,
                    fontSize: 10.sp,
                    right: 8.w,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  AdvancedSwitch(
                    height: 18.sp,
                    width: 36.w,
                    activeColor: AppColors.deepOrange,
                    controller: emailController,
                    initialValue: true,
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextField(
                hintText: AppString.emailAddress,
                keyboardType: TextInputType.emailAddress,
                controller: controller.emailController,
                fillColor: AppColors.transparent,
                borderColor: AppColors.white50,
                paddingVertical: 10.sp,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppString.thisFieldIsRequired;
                  }
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  CustomText(
                    text: AppString.description,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppString.showProfile,
                    fontWeight: FontWeight.w300,
                    fontSize: 10.sp,
                    right: 8.w,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  AdvancedSwitch(
                    height: 18.sp,
                    width: 36.w,
                    activeColor: AppColors.deepOrange,
                    controller: desController,
                    initialValue: true,
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Container(
                height: 115.sp,
                width: Get.width,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white50),
                    borderRadius: BorderRadius.circular(10.r)),
                child: TextFormField(
                  style: TextStyle(fontSize: 14.sp, color: AppColors.white50),
                  maxLines: 10,
                  controller: controller.desController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return AppString.thisFieldIsRequired;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: AppString.description,
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.roboto(
                        fontSize: 14.sp, color: AppColors.white50),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  CustomText(
                    text: AppString.website,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppString.showProfile,
                    fontWeight: FontWeight.w300,
                    fontSize: 10.sp,
                    right: 8.w,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  AdvancedSwitch(
                    height: 18.sp,
                    width: 36.w,
                    activeColor: AppColors.deepOrange,
                    controller: websiteController,
                    initialValue: true,
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextField(
                controller: controller.websiteController,
                hintText: AppString.website,
                keyboardType: TextInputType.url,
                fillColor: AppColors.transparent,
                borderColor: AppColors.white50,
                paddingVertical: 10.sp,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppString.thisFieldIsRequired;
                  }
                },
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  CustomText(
                    text: AppString.businessHours,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  const Spacer(),
                  CustomText(
                    text: AppString.showProfile,
                    fontWeight: FontWeight.w300,
                    fontSize: 10.sp,
                    right: 8.w,
                    textAlign: TextAlign.start,
                    color: AppColors.white50,
                  ),
                  AdvancedSwitch(
                    height: 18.sp,
                    width: 36.w,
                    activeColor: AppColors.deepOrange,
                    controller: hoursController,
                    initialValue: true,
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomTextField(
                hintText: AppString.businessHours,
                controller: controller.businessHoursController,
                keyboardType: TextInputType.none,
                fillColor: AppColors.transparent,
                borderColor: AppColors.white50,
                onTap: () {
                  controller.validationTimePicker();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppString.thisFieldIsRequired;
                  }
                },
                paddingVertical: 10.sp,
                suffixIcon: const Icon(
                  Icons.calendar_month_outlined,
                  color: AppColors.white50,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              controller.isLoading
                  ? const CustomElevatedLoadingButton()
                  : CustomButton(
                      titleText: AppString.save,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (controller.image != null) {
                            controller.updateBusinessProfileRepo();
                          } else {
                            Utils.snackBarMessage(
                                "500", 'please, select image');
                          }
                        }
                      })
            ],
          ),
        );
      },
    );
  }
}