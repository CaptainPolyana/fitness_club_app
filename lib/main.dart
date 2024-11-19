import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/autorization_page.dart';
import 'package:untitled/history_training.dart';
import 'package:untitled/pages/bottom_navigation_page.dart';
import 'package:untitled/pages/reset_password.dart';
import 'package:untitled/pages/verify_email.dart';
import 'package:untitled/registre_page.dart';
import 'package:untitled/services/firebase_streem.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyACndXRTIxBTkaliRJAGol32LcGBCHEoOc',
        appId: '1:336194002735:web:913a3eca6447b78dac0bda',
        messagingSenderId: '336194002735',
        projectId: 'fitnessclubbase',
        authDomain: 'fitnessclubbase.firebaseapp.com',
        storageBucket: 'fitnessclubbase.appspot.com',
            )

  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
       '/': (context) => const FirebaseStream(),
       '/home' : (context) => const AutorizationPage(),
       '/signup' : (context) => const RegistrePage(),
       '/reset_password' : (context) => const ResetPasswordScreen(),
       'verify_email' : (context) => const VerifyEmailScreen(),
       '/bottom_navigation_page' : (context) => const BottomNavigationPage(),
       '/history_training' : (context) => const HistoryTraining(),


     },
      initialRoute: '/',
    );
  }
}
