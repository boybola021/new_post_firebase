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
    apiKey: 'AIzaSyAe-u0TcDD3DhOakTk9mrpPmFzRm9Qi86k',
    appId: '1:363922397594:web:cfb114c149f45b103e8223',
    messagingSenderId: '363922397594',
    projectId: 'post-cc482',
    authDomain: 'post-cc482.firebaseapp.com',
    databaseURL: 'https://post-cc482-default-rtdb.firebaseio.com',
    storageBucket: 'post-cc482.appspot.com',
    measurementId: 'G-S8CK391Z56',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBC516ZvTvne7DliMd2jOlVqNusADp6FgE',
    appId: '1:363922397594:android:3a6acd907ebf1f3f3e8223',
    messagingSenderId: '363922397594',
    projectId: 'post-cc482',
    databaseURL: 'https://post-cc482-default-rtdb.firebaseio.com',
    storageBucket: 'post-cc482.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaNyG9JRKLeqcMFFnvuy81BqapOP8g4PQ',
    appId: '1:363922397594:ios:ea40e8d0acd9946e3e8223',
    messagingSenderId: '363922397594',
    projectId: 'post-cc482',
    databaseURL: 'https://post-cc482-default-rtdb.firebaseio.com',
    storageBucket: 'post-cc482.appspot.com',
    iosBundleId: 'com.example.newPostFirebase',
  );
}
