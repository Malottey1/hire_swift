import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/applicant_controller.dart';
import 'applicant_profile_screen.dart';
import '../widgets/applicant_list_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch applicants when the screen is first built
    Provider.of<ApplicantController>(context, listen: false).fetchApplicants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applicants'),
      ),
      body: Consumer<ApplicantController>(
        builder: (context, controller, child) {
          if (controller.applicants.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: controller.applicants.length,
            itemBuilder: (context, index) {
              final applicant = controller.applicants[index];
              return ApplicantListTile(
                applicant: applicant,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApplicantProfileScreen(applicant: applicant),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
