import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/screens/auth/widgets/input_password_widget.dart';
import 'package:jobee/screens/auth/widgets/input_text_widget.dart';
import 'package:jobee/screens/routes_screen.dart';
import 'package:jobee/screens/widgets/back_widget.dart';
import 'package:jobee/screens/widgets/button_widget.dart';
import 'package:jobee/screens/widgets/icon_button_circle_widget.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackWidget(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: SizedBox(
            height: height * 0.88,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jôbizz",
                  style: AppStyles.semiBold28().copyWith(
                    fontSize: 22.sp,
                    color: AppColors.c356899,
                  ),
                ),
                10.getH(),
                Text(
                  "Registration 👍",
                  style: AppStyles.semiBold28().copyWith(
                    fontSize: 24.sp,
                    color: AppColors.c0D0D26,
                  ),
                ),
                10.getH(),
                Text(
                  "Let’s Register. Apply to jobs!",
                  style: AppStyles.regular13().copyWith(
                    color: AppColors.c0D0D26,
                  ),
                ),
                30.getH(),
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InputTextWidget(
                        icon: AppImages.person,
                        title: "Full Name",
                        onValue: (value) {},
                      ),
                      18.getH(),
                      InputTextWidget(
                        icon: AppImages.mail,
                        title: "E-mail",
                        onValue: (value) {},
                      ),
                      18.getH(),
                      InputPasswordWidget(
                        isObscureText: true,
                        icon: AppImages.password,
                        title: "Password",
                        onValue: (value) {},
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ButtonWidget(
                  width: width,
                  title: "Register",
                  onTap: () {},
                ),
                const Spacer(),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "Or continue with",
                        style: AppStyles.regular13().copyWith(color: AppColors.cAFB0B6),
                      ),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonCircleWidget(
                      icon: AppImages.apple,
                      onTap: () {},
                    ),
                    16.getW(),
                    IconButtonCircleWidget(
                      icon: AppImages.google,
                      onTap: () {},
                    ),
                    16.getW(),
                    IconButtonCircleWidget(
                      icon: AppImages.fasebook,
                      onTap: () {},
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                      style: AppStyles.regular13().copyWith(color: AppColors.cAFB0B6),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.logIn);
                      },
                      child: Text(
                        "Log in",
                        style: AppStyles.regular13().copyWith(color: AppColors.c356899),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
