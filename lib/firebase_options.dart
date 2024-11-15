import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// File generated by FlutterFire CLI.
// ignore_for_file: type=lint

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// // ...
// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyApjzFVi8HLCciUqoL8o2fTh0Zh1RveVRE',
    appId: '1:519820572876:web:b9ec536da7ea2396b52a69',
    messagingSenderId: '519820572876',
    projectId: 'fir-getx-app-18cd9',
    authDomain: 'fir-getx-app-18cd9.firebaseapp.com',
    storageBucket: 'fir-getx-app-18cd9.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeLkKJGOM95p3qrr5icur94-sPUwcNH54',
    appId: '1:519820572876:android:38b1bc4c0f0dddd5b52a69',
    messagingSenderId: '519820572876',
    projectId: 'fir-getx-app-18cd9',
    storageBucket: 'fir-getx-app-18cd9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaGACGDXyEHoU_mfr66xgIHEgVZ8w7ENU',
    appId: '1:519820572876:ios:99ef2399f03d68b5b52a69',
    messagingSenderId: '519820572876',
    projectId: 'fir-getx-app-18cd9',
    storageBucket: 'fir-getx-app-18cd9.firebasestorage.app',
    iosBundleId: 'com.hninhninwai.xyz.testApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBaGACGDXyEHoU_mfr66xgIHEgVZ8w7ENU',
    appId: '1:519820572876:ios:99ef2399f03d68b5b52a69',
    messagingSenderId: '519820572876',
    projectId: 'fir-getx-app-18cd9',
    storageBucket: 'fir-getx-app-18cd9.firebasestorage.app',
    iosBundleId: 'com.hninhninwai.xyz.testApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyApjzFVi8HLCciUqoL8o2fTh0Zh1RveVRE',
    appId: '1:519820572876:web:f5ac4594184845c1b52a69',
    messagingSenderId: '519820572876',
    projectId: 'fir-getx-app-18cd9',
    authDomain: 'fir-getx-app-18cd9.firebaseapp.com',
    storageBucket: 'fir-getx-app-18cd9.firebasestorage.app',
  );
}