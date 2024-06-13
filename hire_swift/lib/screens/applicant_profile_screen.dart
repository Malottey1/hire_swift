import 'package:flutter/material.dart';
import '../models/applicant.dart';
import 'compose_email_screen.dart';

class ApplicantProfileScreen extends StatelessWidget {
  final Applicant applicant;

  ApplicantProfileScreen({required this.applicant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applicant Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${applicant.name}'),
            Text('Age: ${applicant.age ?? 'N/A'}'),
            Text('Gender: ${applicant.gender ?? 'N/A'}'),
            Text('Email: ${applicant.email}'),
            Text('Education Level: ${applicant.educationLevel}'),
            Chip(
              label: Text(applicant.cvReviewed ? 'Reviewed' : 'Not Reviewed'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ComposeEmailScreen(email: applicant.email),
                  ),
                );
              },
              child: const Text('Contact This Applicant'),
            ),
          ],
        ),
      ),
    );
  }
}
