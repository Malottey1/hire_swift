import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/applicant_controller.dart';
import 'controllers/email_controller.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const HireSwiftApp());
}

class HireSwiftApp extends StatelessWidget {
  const HireSwiftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApplicantController()),
        ChangeNotifierProvider(create: (_) => EmailController()),
      ],
      child: MaterialApp(
        title: 'HireSwift',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          hintColor: const Color(0xFF9DCD5A),
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontFamily: 'SpaceGrotesk'),
            displayMedium: TextStyle(fontFamily: 'SpaceGrotesk'),
            displaySmall: TextStyle(fontFamily: 'SpaceGrotesk'),
            headlineMedium: TextStyle(fontFamily: 'SpaceGrotesk'),
            headlineSmall: TextStyle(fontFamily: 'SpaceGrotesk'),
            titleLarge: TextStyle(fontFamily: 'SpaceGrotesk'),
            titleMedium: TextStyle(fontFamily: 'SpaceGrotesk'),
            titleSmall: TextStyle(fontFamily: 'SpaceGrotesk'),
            bodyLarge: TextStyle(fontFamily: 'SpaceGrotesk'),
            bodyMedium: TextStyle(fontFamily: 'SpaceGrotesk'),
            labelLarge: TextStyle(fontFamily: 'SpaceGrotesk'),
            bodySmall: TextStyle(fontFamily: 'SpaceGrotesk'),
            labelSmall: TextStyle(fontFamily: 'SpaceGrotesk'),
          ),
        ),
        home:  SplashScreen(),
      ),
    );
  }
}
