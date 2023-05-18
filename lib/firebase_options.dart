// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBFZVyGw4jFtGfHeVndbG-VQo2JelZVfQA',
    appId: '1:965031342334:web:f2410b2b12a578f5d6b5af',
    messagingSenderId: '965031342334',
    projectId: 'fablabapp-8897',
    authDomain: 'fablabapp-8897.firebaseapp.com',
    storageBucket: 'fablabapp-8897.appspot.com',
    measurementId: 'G-F3TE3W4T08',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfADz1rQx1579ZGvu3AJBmNiwkUf8Ezws',
    appId: '1:965031342334:android:9db30515b4353e14d6b5af',
    messagingSenderId: '965031342334',
    projectId: 'fablabapp-8897',
    storageBucket: 'fablabapp-8897.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMWSGRx07VvGKHaCFvbrreA-WLeD30eqg',
    appId: '1:965031342334:ios:4ebf37cbc4ddbb17d6b5af',
    messagingSenderId: '965031342334',
    projectId: 'fablabapp-8897',
    storageBucket: 'fablabapp-8897.appspot.com',
    iosClientId: '965031342334-npfc9hkv473ilpq85f8ncfod9te7uj50.apps.googleusercontent.com',
    iosBundleId: 'com.soadu.fablabapp',
  );
}