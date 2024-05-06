import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pull_up/controller/profile_controller/profile_controller.dart';
import 'package:pull_up/helper/prefs_helper.dart';
import 'package:pull_up/utils/app_images.dart';
import 'package:pull_up/utils/app_utils.dart';
import 'package:pull_up/view/widget/appbar_icon/appbar_icon.dart';
import 'package:pull_up/view/widget/button/custom_button.dart';
import 'package:pull_up/view/widget/custom_loading.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_string.dart';
import '../../../../widget/profile/profile_image.dart';
import '../../../../widget/text/custom_text.dart';
import 'edit_profile_organisation_account.dart';
import 'edit_profile_shoping_account.dart';

class UpdateProfile extends StatelessWidget {
  UpdateProfile({super.key});

  final formKey = GlobalKey<FormState>();

  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
        appBar: AppBar(
          leading: const AppbarIcon(),
          title: CustomText(
            text: AppString.profile,
            color: AppColors.white50,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: GetBuilder<ProfileController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 24.h),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    const ProfileImage(
                      imageURl: AppImages.profile1,
                    ),
                    CustomText(
                      text: controller.nameController.text,
                      color: AppColors.white50,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      top: 8.h,
                    ),
                    EditProfileShopingAccount(),
                    controller.isLoading
                        ? const CustomElevatedLoadingButton()
                        : CustomButton(
                            titleText: AppString.save,
                            onPressed: () {
                              print(controller.image);
                              if (formKey.currentState!.validate()) {
                                if (controller.image != null) {
                                  controller.updateProfile();
                                } else {
                                  print(controller.image);
                                  Utils.snackBarMessage(
                                      "500", 'please, select image');
                                }
                              }
                            })
                  ],
                ),
              ),
            );
          },
        ));
  }
}
