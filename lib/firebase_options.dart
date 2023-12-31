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
        return macos;
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
    apiKey: 'AIzaSyCFNYolQO0WvbX7sgU0OoY6pSiHRe0-L98',
    appId: '1:137990031214:web:5bfde35b660d3c05a1237f',
    messagingSenderId: '137990031214',
    projectId: 'flutter-test-cf2d0',
    authDomain: 'flutter-test-cf2d0.firebaseapp.com',
    storageBucket: 'flutter-test-cf2d0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqPwvzSOyVizXIl6MiV5mwro1Adx8qrPg',
    appId: '1:137990031214:android:2ee6f491a3c081c7a1237f',
    messagingSenderId: '137990031214',
    projectId: 'flutter-test-cf2d0',
    storageBucket: 'flutter-test-cf2d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAE09GeMV2Ka5NXK_LuQP8q3i7ROJbekjk',
    appId: '1:137990031214:ios:3f0f55a8be5050aba1237f',
    messagingSenderId: '137990031214',
    projectId: 'flutter-test-cf2d0',
    storageBucket: 'flutter-test-cf2d0.appspot.com',
    iosBundleId: 'com.example.goodcoffee',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAE09GeMV2Ka5NXK_LuQP8q3i7ROJbekjk',
    appId: '1:137990031214:ios:158e84f33e73a545a1237f',
    messagingSenderId: '137990031214',
    projectId: 'flutter-test-cf2d0',
    storageBucket: 'flutter-test-cf2d0.appspot.com',
    iosBundleId: 'com.example.goodcoffee.RunnerTests',
  );
}
