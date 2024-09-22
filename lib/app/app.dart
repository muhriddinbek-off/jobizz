import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobee/cubit/job_category_select/job_category_select_cubit.dart';
import 'package:jobee/cubit/jobs_category/jobs_category_cubit.dart';
import 'package:jobee/cubit/main/main_cubit.dart';
import 'package:jobee/cubit/onboarding/onboarding_cubit.dart';
import 'package:jobee/screens/routes_screen.dart';
import 'package:jobee/tools/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnboardingCubit()),
        BlocProvider(create: (context) => MainCubit()),
        BlocProvider(create: (context) => JobsCategoryCubit()),
        BlocProvider(create: (context) => JobCategorySelectCubit()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: "Jobizz",
          theme: AppTheme.getAppTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesName.splash,
          onGenerateRoute: RoutesScreen.appRoutes,
        );
      },
    );
  }
}
