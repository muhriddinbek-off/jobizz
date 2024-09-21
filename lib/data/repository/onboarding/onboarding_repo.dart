import 'package:jobee/tools/app_images.dart';

class OnboardingRepo {
  final String img;
  final String title;
  final String description;
  OnboardingRepo({
    required this.description,
    required this.img,
    required this.title,
  });
}

List<OnboardingRepo> onboardingDeta = [
  OnboardingRepo(
    description: "Figure out your top five priorities whether it is company culture, salary.",
    img: AppImages.onboarding1,
    title: "Search your job",
  ),
  OnboardingRepo(
    description: "Our job list include several  industries, so you can find the best job for you.",
    img: AppImages.onboarding2,
    title: "Browse jobs list",
  ),
  OnboardingRepo(
    description: "You can apply to your desirable jobs very quickly and easily with ease.",
    img: AppImages.onboarding3,
    title: "Apply to best jobs",
  ),
  OnboardingRepo(
    description: "We help you find your dream job based on your skillset, location, demand.",
    img: AppImages.onboarding4,
    title: "Make your career",
  ),
  OnboardingRepo(
    description: "Figure out your top five priorities -- whether it is company culture, salary or a specific job position.",
    img: AppImages.onboarding5,
    title: "Search your dream job fast and ease",
  ),
  OnboardingRepo(
    description: "We help you find your dream job according to your skillset, location & preference to build your career.",
    img: AppImages.onboarding6,
    title: "Make your dream career with job",
  ),
];
