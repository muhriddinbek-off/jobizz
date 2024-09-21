import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/cubit/onboarding/onboarding_cubit.dart';
import 'package:jobee/data/repository/onboarding/onboarding_repo.dart';
import 'package:jobee/screens/onboarding/widgets/onboarding_item.dart';
import 'package:jobee/screens/routes_screen.dart';
import 'package:jobee/screens/widgets/button_widget.dart';
import 'package:jobee/screens/widgets/text_button_widget.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnboardingCubit, int>(
        builder: (context, state) {
          return SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                Image.asset(
                  AppImages.ellipse,
                  width: width,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  flex: 6,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (value) {
                      context.read<OnboardingCubit>().changeIndex(value);
                    },
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(onboardingDeta.length, (index) {
                      var item = onboardingDeta[index];
                      return OnboardingItem(
                        description: item.description,
                        img: item.img,
                        title: item.title,
                      );
                    }),
                  ),
                ),
                26.getH(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingDeta.length,
                    (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        height: 8.h,
                        width: state == index ? 20.w : 8.w,
                        decoration: BoxDecoration(
                          color: state == index ? AppColors.primaryColor : AppColors.cE4E5E7,
                          borderRadius: BorderRadius.circular(50.h),
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButtonWidget(
                          onTap: () {
                            if (state > 0) {
                              state--;
                              pageController.animateToPage(
                                state,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.linear,
                              );
                            }
                          },
                          title: "Skip"),
                      ButtonWidget(
                        width: width * 0.4,
                        title: "Next",
                        onTap: () {
                          if (state != onboardingDeta.length - 1) {
                            state++;
                            pageController.animateToPage(
                              state,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear,
                            );
                          } else {
                            Navigator.pushNamed(context, RoutesName.signIn);
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
