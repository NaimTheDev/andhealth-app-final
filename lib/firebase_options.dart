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
    apiKey: 'AIzaSyBVuvPJrinU5SkyA7s8TNF34VgW67Tuho4',
    appId: '1:867061463916:web:c978f62ebfd1bfc1025149',
    messagingSenderId: '867061463916',
    projectId: 'andhealth-chat-backend',
    authDomain: 'andhealth-chat-backend.firebaseapp.com',
    databaseURL: 'https://andhealth-chat-backend-default-rtdb.firebaseio.com',
    storageBucket: 'andhealth-chat-backend.appspot.com',
    measurementId: 'G-K6JHNWRXF0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSwhNP_hUR7Q7YB25PdfDnSOjytNDXi_Y',
    appId: '1:867061463916:android:a5b88afa9ed75fe8025149',
    messagingSenderId: '867061463916',
    projectId: 'andhealth-chat-backend',
    databaseURL: 'https://andhealth-chat-backend-default-rtdb.firebaseio.com',
    storageBucket: 'andhealth-chat-backend.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOit18V8eeDJ3q959Sc-eLBAkZy8pdyzg',
    appId: '1:867061463916:ios:d2c9c099760d67e4025149',
    messagingSenderId: '867061463916',
    projectId: 'andhealth-chat-backend',
    databaseURL: 'https://andhealth-chat-backend-default-rtdb.firebaseio.com',
    storageBucket: 'andhealth-chat-backend.appspot.com',
    iosBundleId: 'com.example.andhealthchat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOit18V8eeDJ3q959Sc-eLBAkZy8pdyzg',
    appId: '1:867061463916:ios:d2c9c099760d67e4025149',
    messagingSenderId: '867061463916',
    projectId: 'andhealth-chat-backend',
    databaseURL: 'https://andhealth-chat-backend-default-rtdb.firebaseio.com',
    storageBucket: 'andhealth-chat-backend.appspot.com',
    iosBundleId: 'com.example.andhealthchat',
  );
}
