import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/email_controller.dart';

class ComposeEmailScreen extends StatelessWidget {
  final String email;

  ComposeEmailScreen({required this.email});

  @override
  Widget build(BuildContext context) {
    final emailController = Provider.of<EmailController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Compose Email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Email',
              ),
              controller: TextEditingController(text: email),
              readOnly: true,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Subject',
                hintText: 'Subject',
              ),
              onChanged: (value) => emailController.setSubject(value),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Body',
                hintText: 'Body',
              ),
              maxLines: 5,
              onChanged: (value) => emailController.setBody(value),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                emailController.setEmail(email);
                await emailController.sendEmail();
              },
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
