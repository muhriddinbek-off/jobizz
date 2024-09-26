import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobee/bloc/employer/employer_upload_logo_bloc.dart';
import 'package:jobee/cubit/employer/employer_cubit.dart';
import 'package:jobee/data/models/employer/employer_model.dart';
import 'package:jobee/data/repository/job_blanc/job_blanc_category.dart';
import 'package:jobee/screens/main/screens/category/screens/employer/widgets/employer_description.dart';
import 'package:jobee/screens/main/screens/category/screens/employer/widgets/upload_logo_default.dart';
import 'package:jobee/screens/main/screens/category/screens/employer/widgets/upload_logo_file.dart';
import 'package:jobee/screens/main/screens/category/screens/find_job/widgets/dropdown_item_widget.dart';
import 'package:jobee/screens/widgets/button_widget.dart';
import 'package:jobee/tools/size/app_size.dart';
import 'package:jobee/tools/styles/app_styles.dart';

class EmployerScreen extends StatefulWidget {
  const EmployerScreen({super.key});

  @override
  State<EmployerScreen> createState() => _FindJobScreenState();
}

class _FindJobScreenState extends State<EmployerScreen> {
  String? selectRegion;
  String? selectCity;
  String? selectJobType;
  String? selectJobLine;
  String? selectType;
  String? selectJobLevel;
  String? selectJobExperience;
  String? selectJobDescription;
  String? selectJobCompanyName;
  XFile? selectLogo;
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
          BlocBuilder<EmployerCubit, EmployerModel>(
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
                        context.read<EmployerCubit>().changeRegion(selectRegion!);
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
                          context.read<EmployerCubit>().changeCity(selectCity!);
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
                        context.read<EmployerCubit>().changeJobType(selectJobType!);
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
                          context.read<EmployerCubit>().changeJobLine(selectJobLine!);
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
                          context.read<EmployerCubit>().changeJobLevel(selectJobLevel!);
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
                          context.read<EmployerCubit>().changeJobLevel(selectJobExperience!);
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
                          context.read<EmployerCubit>().changeJobLevel(selectType!);
                        },
                        title: Text(
                          jobTypeData,
                          style: AppStyles.regular15(),
                        ),
                      );
                    },
                  ),
                  30.getH(),
                  getTitle("Add Company Logo"),
                ],
              );
            },
          ),
          BlocBuilder<EmployerUploadLogoBloc, EmployerUploadLogoState>(
            builder: (context, state) {
              if (state is LogoUploadProgress) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is LogoUploadSuccess) {
                selectLogo = state.xFile;
                // context.read<EmployerCubit>().changeLogo(selectLogo!);
                return UploadLogoFile(file: state.xFile);
              }
              if (state is LogoUploadError) {
                Text(state.errorMassage);
              }
              return const UploadLogoDefault();
            },
          ),
          20.getH(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                width: width * 0.6,
                title: "Choose Logo",
                onTap: () {
                  context.read<EmployerUploadLogoBloc>().add(LogoUpload());
                },
              ),
            ],
          ),
          30.getH(),
          getTitle("Price"),
          EmployerInputDescriptionWidget(
            maxLine: 1,
            title: "Price",
            onChangeValue: (value) {
              selectPrice = value;
            },
          ),
          30.getH(),
          getTitle("Company Name"),
          EmployerInputDescriptionWidget(
            maxLine: 1,
            title: "Company Name",
            onChangeValue: (value) {
              selectJobCompanyName = value;
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
