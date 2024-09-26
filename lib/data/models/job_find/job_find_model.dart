class JobFindModel {
  final String region;
  final String city;
  final String jobType;
  final String jobLine;
  final String type;
  final String jobExperience;
  final String jobLevel;
  final String jobDescription;
  final String price;
  JobFindModel({
    required this.region,
    required this.city,
    required this.jobLine,
    required this.jobType,
    required this.type,
    required this.jobExperience,
    required this.jobLevel,
    required this.jobDescription,
    required this.price,
  });

  JobFindModel copyWith({
    String? region,
    String? city,
    String? jobType,
    String? jobLine,
    String? type,
    String? jobExperience,
    String? jobLevel,
    String? jobDescription,
    String? price,
  }) {
    return JobFindModel(
      region: region ?? this.region,
      city: city ?? this.city,
      jobLine: jobLine ?? this.jobLine,
      jobType: jobType ?? this.jobType,
      type: type ?? this.type,
      jobExperience: jobExperience ?? this.jobExperience,
      jobLevel: jobLevel ?? this.jobLevel,
      jobDescription: jobDescription ?? this.jobDescription,
      price: price ?? this.price,
    );
  }

  static JobFindModel initialValue = JobFindModel(
    region: "",
    city: "",
    jobLine: "",
    jobType: "",
    type: "",
    jobExperience: "",
    jobLevel: "",
    jobDescription: "",
    price: "",
  );
}
