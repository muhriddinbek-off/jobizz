import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/data/repository/saved/saved_list.dart';
import 'package:jobee/screens/main/screens/bookmark/widgets/dialogs/delete_favourite_item.dart';
import 'package:jobee/screens/main/screens/bookmark/widgets/empty_list.dart';
import 'package:jobee/screens/main/screens/bookmark/widgets/saved_item.dart';
import 'package:jobee/screens/main/screens/home/screens/job_detail.dart';
import 'package:jobee/tools/colors/app_colors.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const SizedBox(),
        title: Text(
          "Saved",
          style: AppStyles.semiBold16().copyWith(
            color: AppColors.c0D0D26,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Text(
              "You saved ${saveds.length} Jobs",
              style: AppStyles.semiBold28().copyWith(
                color: AppColors.c0D0D26,
                fontSize: 24.sp,
              ),
            ),
            16.getH(),
            saveds.isEmpty
                ? const EmtpyList()
                : Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: saveds.length,
                      itemBuilder: (context, index) {
                        final saveJobs = saveds[index];
                        return SavedItem(
                          saveJobs: saveJobs,
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => JobDetail(employer: saveds[index]))),
                          onLongPress: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return DeleteFavouriteItem(
                                  onTap: () {
                                    saveds.removeAt(index);
                                    Navigator.pop(context);
                                    setState(() {});
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
