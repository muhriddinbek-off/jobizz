import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobee/cubit/main/main_cubit.dart';
import 'package:jobee/screens/main/screens/bookmark/bookmark_screen.dart';
import 'package:jobee/screens/main/screens/category/category_screen.dart';
import 'package:jobee/screens/main/screens/home/home_screen.dart';
import 'package:jobee/screens/main/screens/massage/massage_screen.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeScreen(),
          MassageScreen(),
          BookmarkScreen(),
          CategoryScreen(),
        ],
      ),
      bottomNavigationBar: BlocBuilder<MainCubit, int>(
        builder: (context, state) {
          return Container(
            color: AppColors.white,
            height: height * 0.1,
            child: TabBar(
              indicatorColor: AppColors.transparent,
              onTap: (value) {
                context.read<MainCubit>().getChangeIndex(value);
              },
              controller: tabController,
              tabs: [
                tabItems(icon: state == 0 ? AppImages.homeFull : AppImages.home, iconColor: state == 0 ? AppColors.c356899 : AppColors.cCACBCE, circleColor: state == 0 ? AppColors.c356899 : AppColors.transparent),
                tabItems(icon: state == 1 ? AppImages.massageFull : AppImages.massage, iconColor: state == 1 ? AppColors.c356899 : AppColors.cCACBCE, circleColor: state == 1 ? AppColors.c356899 : AppColors.transparent),
                tabItems(icon: state == 2 ? AppImages.bookmarkFull : AppImages.bookmark, iconColor: state == 2 ? AppColors.c356899 : AppColors.cCACBCE, circleColor: state == 2 ? AppColors.c356899 : AppColors.transparent),
                tabItems(icon: state == 3 ? AppImages.categoryFull : AppImages.category, iconColor: state == 3 ? AppColors.c356899 : AppColors.cCACBCE, circleColor: state == 3 ? AppColors.c356899 : AppColors.transparent),
              ],
            ),
          );
        },
      ),
    );
  }

  Tab tabItems({
    required String icon,
    required Color iconColor,
    required Color circleColor,
  }) {
    return Tab(
      icon: ZoomTapAnimation(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
            ),
            Container(
              height: 4.h,
              width: 4.w,
              decoration: BoxDecoration(
                color: circleColor,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
