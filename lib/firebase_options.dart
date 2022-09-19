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
    apiKey: 'AIzaSyBbGJqIs_DoQdQyH9mHz6_-pIpAQQS2Jro',
    appId: '1:493698261298:web:8687908f072f35a36af72b',
    messagingSenderId: '493698261298',
    projectId: 'calendar-753a9',
    authDomain: 'calendar-753a9.firebaseapp.com',
    storageBucket: 'calendar-753a9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCG4ompVc9kgIpUgDnNfJU9YXcfJWYWWk4',
    appId: '1:493698261298:android:6e76466669f990e26af72b',
    messagingSenderId: '493698261298',
    projectId: 'calendar-753a9',
    storageBucket: 'calendar-753a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApqEa1wizABeNMxPuSPNCp8CTrDB9fXYk',
    appId: '1:493698261298:ios:38da5c8e355923976af72b',
    messagingSenderId: '493698261298',
    projectId: 'calendar-753a9',
    storageBucket: 'calendar-753a9.appspot.com',
    iosClientId: '493698261298-ng60j1pb717pbnbhs00he0gtplouomoe.apps.googleusercontent.com',
    iosBundleId: 'com.sebastianpartyka.kalendar2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApqEa1wizABeNMxPuSPNCp8CTrDB9fXYk',
    appId: '1:493698261298:ios:38da5c8e355923976af72b',
    messagingSenderId: '493698261298',
    projectId: 'calendar-753a9',
    storageBucket: 'calendar-753a9.appspot.com',
    iosClientId: '493698261298-ng60j1pb717pbnbhs00he0gtplouomoe.apps.googleusercontent.com',
    iosBundleId: 'com.sebastianpartyka.kalendar2',
  );
}
