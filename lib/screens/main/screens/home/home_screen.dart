import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/cubit/jobs_category/jobs_category_cubit.dart';
import 'package:jobee/data/models/employer/employer_model.dart';
import 'package:jobee/data/models/job_find/job_find_model.dart';
import 'package:jobee/data/repository/empolyer/empolyer_data.dart';
import 'package:jobee/data/repository/jobs_category/jobs_category.dart';
import 'package:jobee/screens/main/screens/home/screens/job_detail.dart';
import 'package:jobee/screens/main/screens/home/screens/job_find_detail_widget.dart';
import 'package:jobee/screens/main/screens/home/widgets/find_job_widget.dart';
import 'package:jobee/screens/main/screens/home/widgets/home_filter.dart';
import 'package:jobee/screens/main/screens/home/widgets/home_search.dart';
import 'package:jobee/screens/main/screens/home/widgets/jobs_categories_item.dart';
import 'package:jobee/screens/main/screens/home/widgets/jobs_empolyer_widget_item.dart';
import 'package:jobee/screens/main/screens/home/widgets/main_appbar.dart';
import 'package:jobee/screens/routes_screen.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: ListView(
          shrinkWrap: true,
          children: [
            const MainAppbar(),
            30.getH(),
            SizedBox(
              width: width,
              child: Row(
                children: [
                  HomeSearch(
                    onValue: (value) {},
                  ),
                  10.getW(),
                  HomeFilter(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.settingsScreen);
                    },
                  ),
                ],
              ),
            ),
            10.getH(),
            Text(
              "Categories",
              style: AppStyles.semiBold16().copyWith(
                color: AppColors.c0D0D26,
              ),
            ),
            20.getH(),
            BlocBuilder<JobsCategoryCubit, int>(
              builder: (context, state) {
                return SizedBox(
                  height: 40.h,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: jobsCategories.length,
                    itemBuilder: (context, index) {
                      return JobsCategoriesItem(
                        categoryName: jobsCategories[index],
                        index: index,
                        changedIndex: state,
                        onTap: () {
                          context.read<JobsCategoryCubit>().getChangeIndex(index);
                        },
                      );
                    },
                  ),
                );
              },
            ),
            20.getH(),
            ...List.generate(
              employerData.length,
              (index) {
                final item = employerData[index];
                if (item is EmployerModel) {
                  return JobsEmpolyerWidgetItem(
                    empolyer: item,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobDetail(
                            employer: item,
                          ),
                        ),
                      );
                    },
                  );
                }
                if (item is JobFindModel) {
                  JobFindModel jobItem = item;
                  return JobFindWidget(
                    item: jobItem,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobFindDetailScreen(jobItem: jobItem),
                        ),
                      );
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
