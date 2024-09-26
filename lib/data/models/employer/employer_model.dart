class EmployerModel {
  final String jobExperience;
  final String companyLogo;
  final String companyName;
  final String jobOfType;
  final String region;
  final String city;
  final String jobOfTime;
  final String price;
  final String description;
  final String jobLevel;
  final String jobLine;
  EmployerModel({
    required this.city,
    required this.companyLogo,
    required this.companyName,
    required this.description,
    required this.jobOfTime,
    required this.jobOfType,
    required this.price,
    required this.region,
    required this.jobLevel,
    required this.jobExperience,
    required this.jobLine,
  });

  EmployerModel copyWith({
    String? jobExperience,
    String? companyLogo,
    String? companyName,
    String? jobOfType,
    String? region,
    String? city,
    String? jobOfTime,
    String? price,
    String? description,
    String? jobLevel,
    String? jobLine,
  }) {
    return EmployerModel(
      city: city ?? this.city,
      companyLogo: companyLogo ?? this.companyName,
      companyName: companyName ?? this.description,
      description: description ?? this.description,
      jobOfTime: jobOfTime ?? this.jobOfTime,
      jobOfType: jobOfType ?? this.jobOfType,
      price: price ?? this.price,
      region: region ?? this.region,
      jobLevel: jobLevel ?? this.jobLevel,
      jobExperience: jobExperience ?? this.jobExperience,
      jobLine: jobLine ?? this.jobLine,
    );
  }

  static EmployerModel initialValue = EmployerModel(
    city: "",
    companyLogo: "",
    companyName: "",
    description: "",
    jobOfTime: "",
    jobOfType: "",
    price: "",
    region: "",
    jobLevel: "",
    jobExperience: "",
    jobLine: "",
  );
}
