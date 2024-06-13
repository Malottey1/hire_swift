import 'package:flutter/material.dart';
import '../models/applicant.dart';

class ApplicantListTile extends StatelessWidget {
  final Applicant applicant;
  final VoidCallback onTap;

  const ApplicantListTile({
    Key? key,
    required this.applicant,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(applicant.name[0]),
      ),
      title: Text(applicant.name),
      subtitle: Text(applicant.jobTitle),
      onTap: onTap,
    );
  }
}
