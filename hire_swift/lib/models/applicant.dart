class Applicant {
  final String id;
  final String name;
  final String jobTitle;
  final int? age;
  final String? gender;
  final String email;
  final String educationLevel;
  final bool cvReviewed;

  Applicant({
    required this.id,
    required this.name,
    required this.jobTitle,
    this.age,
    this.gender,
    required this.email,
    required this.educationLevel,
    this.cvReviewed = false,
  });
}
