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
    apiKey: 'AIzaSyAoA3pbMpV_OMTvC9PjdF_fnVaQTIHc1bI',
    appId: '1:829322523982:web:5e5ee0c4cd3fbc31009a1f',
    messagingSenderId: '829322523982',
    projectId: 'crud-a803c',
    authDomain: 'crud-a803c.firebaseapp.com',
    storageBucket: 'crud-a803c.appspot.com',
    measurementId: 'G-60PJPJ7BGN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1haZOJ_oLdAszMdjzojkOPix_7_umvH0',
    appId: '1:829322523982:android:72fbfe6c0911ed02009a1f',
    messagingSenderId: '829322523982',
    projectId: 'crud-a803c',
    storageBucket: 'crud-a803c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZkT1G4f2Xrwp36PwDBtzxU2wQq9QSp_4',
    appId: '1:829322523982:ios:84c71053aa5eb2f2009a1f',
    messagingSenderId: '829322523982',
    projectId: 'crud-a803c',
    storageBucket: 'crud-a803c.appspot.com',
    iosBundleId: 'com.example.crud',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZkT1G4f2Xrwp36PwDBtzxU2wQq9QSp_4',
    appId: '1:829322523982:ios:84c71053aa5eb2f2009a1f',
    messagingSenderId: '829322523982',
    projectId: 'crud-a803c',
    storageBucket: 'crud-a803c.appspot.com',
    iosBundleId: 'com.example.crud',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAoA3pbMpV_OMTvC9PjdF_fnVaQTIHc1bI',
    appId: '1:829322523982:web:5aaab07dec11ce08009a1f',
    messagingSenderId: '829322523982',
    projectId: 'crud-a803c',
    authDomain: 'crud-a803c.firebaseapp.com',
    storageBucket: 'crud-a803c.appspot.com',
    measurementId: 'G-ZP3SJYZ8VN',
  );
}
