import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobee/bloc/file_upload/file_upload_bloc.dart';
import 'package:jobee/cubit/job_find/job_find_cubit.dart';
import 'package:jobee/data/models/job_find/job_find_model.dart';
import 'package:jobee/data/repository/job_blanc/job_blanc_category.dart';
import 'package:jobee/screens/main/screens/category/screens/employer/widgets/employer_description.dart';
import 'package:jobee/screens/main/screens/category/screens/find_job/widgets/dropdown_item_widget.dart';
import 'package:jobee/screens/main/screens/category/screens/find_job/screens/resume_emtpy.dart';
import 'package:jobee/screens/main/screens/category/screens/find_job/screens/resume_upload.dart';
import 'package:jobee/screens/widgets/button_widget.dart';
import 'package:jobee/tools/images/app_images.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class FindJobScreen extends StatefulWidget {
  const FindJobScreen({super.key});

  @override
  State<FindJobScreen> createState() => _FindJobScreenState();
}

class _FindJobScreenState extends State<FindJobScreen> {
  String? selectRegion;
  String? selectCity;
  String? selectJobType;
  String? selectJobLine;
  String? selectType;
  String? selectJobLevel;
  String? selectJobExperience;
  String? selectJobDescription;
  String? selectPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          "Find Jobs",
          style: AppStyles.bold20(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        shrinkWrap: true,
        children: [
          BlocBuilder<JobFindCubit, JobFindModel>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTitle("Location"),
                  DropdownItemWidget(
                      hintName: "Select a region",
                      selectValue: selectRegion,
                      dropdownItems: uzbekistanRegions.keys.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onValueChange: (value) {
                        selectRegion = value;
                        context.read<JobFindCubit>().changeRegion(selectRegion!);
                        selectCity = null;
                      }),
                  20.getH(),
                  if (selectRegion != null)
                    DropdownItemWidget(
                        hintName: "Select a city",
                        selectValue: selectCity,
                        dropdownItems: uzbekistanRegions[selectRegion]!.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onValueChange: (value) {
                          selectCity = value;
                          context.read<JobFindCubit>().changeCity(selectCity!);
                        }),
                  30.getH(),
                  getTitle("Select Job Roles"),
                  DropdownItemWidget(
                      hintName: "select the job type",
                      selectValue: selectJobType,
                      dropdownItems: jobsCategoriesData.keys.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onValueChange: (value) {
                        selectJobType = value;
                        context.read<JobFindCubit>().changeJobType(selectJobType!);
                        selectJobLine = null;
                      }),
                  20.getH(),
                  if (selectJobType != null)
                    DropdownItemWidget(
                        hintName: "choose a direction",
                        selectValue: selectJobLine,
                        dropdownItems: jobsCategoriesData[selectJobType]!.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onValueChange: (value) {
                          selectJobLine = value;
                          context.read<JobFindCubit>().changeJobLine(selectJobLine!);
                        }),
                  30.getH(),
                  getTitle("Job Level"),
                  ...List.generate(
                    jobLavel.length,
                    (index) {
                      final jobLevelData = jobLavel[index];
                      return RadioListTile(
                        value: jobLevelData,
                        groupValue: selectJobLevel,
                        onChanged: (value) {
                          selectJobLevel = value;
                          context.read<JobFindCubit>().changeJobLevel(selectJobLevel!);
                        },
                        title: Text(
                          jobLevelData,
                          style: AppStyles.regular15(),
                        ),
                      );
                    },
                  ),
                  30.getH(),
                  getTitle("Job Experience"),
                  ...List.generate(
                    jobExperience.length,
                    (index) {
                      final jobExperienceDate = jobExperience[index];
                      return RadioListTile(
                        value: jobExperienceDate,
                        groupValue: selectJobExperience,
                        onChanged: (value) {
                          selectJobExperience = value;
                          context.read<JobFindCubit>().changeJobLevel(selectJobExperience!);
                        },
                        title: Text(
                          jobExperienceDate,
                          style: AppStyles.regular15(),
                        ),
                      );
                    },
                  ),
                  30.getH(),
                  getTitle("Job Type"),
                  ...List.generate(
                    jobTypes.length,
                    (index) {
                      final jobTypeData = jobTypes[index];
                      return RadioListTile(
                        value: jobTypeData,
                        groupValue: selectType,
                        onChanged: (value) {
                          selectType = value;
                          context.read<JobFindCubit>().changeJobLevel(selectType!);
                        },
                        title: Text(
                          jobTypeData,
                          style: AppStyles.regular15(),
                        ),
                      );
                    },
                  ),
                  30.getH(),
                  getTitle("Price"),
                  EmployerInputDescriptionWidget(
                    maxLine: 1,
                    title: "Enter price",
                    onChangeValue: (value) {
                      selectPrice = value;
                    },
                  ),
                  30.getH(),
                  getTitle("Description"),
                  EmployerInputDescriptionWidget(
                    maxLine: 8,
                    title: "Description",
                    onChangeValue: (value) {
                      selectJobDescription = value;
                    },
                  ),
                  30.getH(),
                  getTitle("Resume"),
                ],
              );
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            height: height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.dashedBorder),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Upload your CV or Resume and use it when you apply for jobs",
                  textAlign: TextAlign.center,
                  style: AppStyles.medium12(),
                ),
                BlocBuilder<FileUploadBloc, FileUploadState>(
                  builder: (context, state) {
                    if (state is FileUploadProgress) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is FileUploadSuccess) {
                      PlatformFile file = state.massage.files.first;
                      return ResumeUpload(
                        fileName: file.name,
                        fileByte: file.bytes.toString(),
                      );
                    }
                    if (state is FileUploadError) {
                      return Center(
                        child: Text(state.errorMassage),
                      );
                    }
                    return const ResumeEmtpy();
                  },
                ),
                ButtonWidget(
                    width: width * 0.45,
                    onTap: () {
                      context.read<FileUploadBloc>().add(
                            FetchFileUpload(),
                          );
                    },
                    title: "Choose File"),
              ],
            ),
          ),
          30.getH(),
          ButtonWidget(width: width, onTap: () {}, title: "Save"),
          20.getH(),
        ],
      ),
    );
  }

  Widget getTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Text(
        title,
        style: AppStyles.medium16().copyWith(fontWeight: FontWeight.w800),
      ),
    );
  }
}
