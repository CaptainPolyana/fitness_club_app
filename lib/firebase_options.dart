// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyACndXRTIxBTkaliRJAGol32LcGBCHEoOc',
    appId: '1:336194002735:web:913a3eca6447b78dac0bda',
    messagingSenderId: '336194002735',
    projectId: 'fitnessclubbase',
    authDomain: 'fitnessclubbase.firebaseapp.com',
    storageBucket: 'fitnessclubbase.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClSiTpoGnHMTMgpKQ78oC4cXWHYP4Tx60',
    appId: '1:336194002735:android:cad05186c011c51cac0bda',
    messagingSenderId: '336194002735',
    projectId: 'fitnessclubbase',
    storageBucket: 'fitnessclubbase.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyACndXRTIxBTkaliRJAGol32LcGBCHEoOc',
    appId: '1:336194002735:web:3ac678cf2e9dc160ac0bda',
    messagingSenderId: '336194002735',
    projectId: 'fitnessclubbase',
    authDomain: 'fitnessclubbase.firebaseapp.com',
    storageBucket: 'fitnessclubbase.appspot.com',
  );
}
