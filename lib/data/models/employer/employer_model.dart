class EmployerModel {
  final String companyLogo;
  final String companyName;
  final String jobOfType;
  final String region;
  final String city;
  final String jobOfTime;
  final double price;
  final String description;
  final String jobLevel;
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
  });
}
