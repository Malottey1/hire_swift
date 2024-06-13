import 'package:flutter/material.dart';
import '../models/applicant.dart';

class ApplicantController extends ChangeNotifier {
  List<Applicant> _applicants = [];

  List<Applicant> get applicants => _applicants;

  void fetchApplicants() {
    _applicants = [
      Applicant(
        id: '1',
        name: 'Malcolm Clottey',
        jobTitle: 'Cashier',
        age: 25,
        gender: 'Male',
        email: 'clatteymolcolm4@gmail.com',
        educationLevel: 'High School',
        cvReviewed: true,
      ),
      Applicant(
        id: '2',
        name: 'Ama Asantewaa',
        jobTitle: 'Sales Floor Associate',
        age: 22,
        gender: 'Female',
        email: 'ama.asantewaa@example.com',
        educationLevel: 'College',
        cvReviewed: false,
      ),
      Applicant(
        id: '3',
        name: 'David Sampah',
        jobTitle: 'Manager',
        age: 30,
        gender: 'Male',
        email: 'dsampah@ashesi.edu.gh',
        educationLevel: 'Tertiary',
        cvReviewed: true,
      ),
      Applicant(
        id: '4',
        name: 'Akosua Mensah',
        jobTitle: 'Stock Associate',
        age: 28,
        gender: 'Female',
        email: 'akosua.mensah@example.com',
        educationLevel: 'Vocational School',
        cvReviewed: false,
      ),
      Applicant(
        id: '5',
        name: 'Yaw Boakye',
        jobTitle: 'Cashier',
        age: 24,
        gender: 'Male',
        email: 'yaw.boakye@example.com',
        educationLevel: 'High School',
        cvReviewed: true,
      ),
      Applicant(
        id: '6',
        name: 'Akwasi Asante-Krobea',
        jobTitle: 'Manager',
        age: 26,
        gender: 'Male',
        email: 'akwasi.krobea@aucampus.onmicrosoft.com',
        educationLevel: 'Tertiary',
        cvReviewed: true,
      ),
      Applicant(
        id: '7',
        name: 'Kojo Antwi',
        jobTitle: 'Janitor',
        age: 35,
        gender: 'Male',
        email: 'kojo.antwi@example.com',
        educationLevel: 'High School',
        cvReviewed: true,
      ),
      Applicant(
        id: '8',
        name: 'Abena Owusu',
        jobTitle: 'Stock Associate',
        age: 27,
        gender: 'Female',
        email: 'abena.owusu@example.com',
        educationLevel: 'Vocational School',
        cvReviewed: false,
      ),
      Applicant(
        id: '9',
        name: 'Kofi Amoah',
        jobTitle: 'Cashier',
        age: 23,
        gender: 'Male',
        email: 'kofi.amoah@example.com',
        educationLevel: 'High School',
        cvReviewed: true,
      ),
      Applicant(
        id: '10',
        name: 'Adwoa Anane',
        jobTitle: 'Sales Floor Associate',
        age: 29,
        gender: 'Female',
        email: 'adwoa.anane@example.com',
        educationLevel: 'College',
        cvReviewed: false,
      ),
      Applicant(
        id: '11',
        name: 'Kwesi Appiah',
        jobTitle: 'Janitor',
        age: 32,
        gender: 'Male',
        email: 'kwesi.appiah@example.com',
        educationLevel: 'High School',
        cvReviewed: true,
      ),
      Applicant(
        id: '12',
        name: 'Nana Akuffo',
        jobTitle: 'Stock Associate',
        age: 26,
        gender: 'Female',
        email: 'nana.akuffo@example.com',
        educationLevel: 'Vocational School',
        cvReviewed: true,
      ),
      Applicant(
        id: '13',
        name: 'Yaw Owusu',
        jobTitle: 'Cashier',
        age: 24,
        gender: 'Male',
        email: 'yaw.owusu@example.com',
        educationLevel: 'High School',
        cvReviewed: false,
      ),
      Applicant(
        id: '14',
        name: 'Akua Kyei',
        jobTitle: 'Sales Floor Associate',
        age: 27,
        gender: 'Female',
        email: 'akua.kyei@example.com',
        educationLevel: 'College',
        cvReviewed: true,
      ),
      Applicant(
        id: '15',
        name: 'Kwabena Osei',
        jobTitle: 'Janitor',
        age: 33,
        gender: 'Male',
        email: 'kwabena.osei@example.com',
        educationLevel: 'High School',
        cvReviewed: false,
      ),

      Applicant(
        id: '16',
        name: 'David Babafemi',
        jobTitle: 'Baker',
        age: 33,
        gender: 'Male',
        email: 'david.babafemi@ashesi.edu.gh',
        educationLevel: 'High School',
        cvReviewed: true,
      ),
    ];
    notifyListeners();
  }

  void updateCvStatus(String id, bool reviewed) {
    final index = _applicants.indexWhere((applicant) => applicant.id == id);
    if (index != -1) {
      _applicants[index] = Applicant(
        id: _applicants[index].id,
        name: _applicants[index].name,
        jobTitle: _applicants[index].jobTitle,
        age: _applicants[index].age,
        gender: _applicants[index].gender,
        email: _applicants[index].email,
        educationLevel: _applicants[index].educationLevel,
        cvReviewed: reviewed,
      );
      notifyListeners();
    }
  }
}
