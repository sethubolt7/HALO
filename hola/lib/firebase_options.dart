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
    apiKey: 'AIzaSyBzV-Pi46DqYADIcb7G_QetfkxDVA2sDuI',
    appId: '1:217409404792:web:46686450e2259f8325528d',
    messagingSenderId: '217409404792',
    projectId: 'aurasync-wearable-device',
    authDomain: 'aurasync-wearable-device.firebaseapp.com',
    databaseURL: 'https://aurasync-wearable-device-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'aurasync-wearable-device.appspot.com',
    measurementId: 'G-SFX4650R28',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwYJIwO1G_4ZKZL3wUHJBDGBo71-UrfeI',
    appId: '1:217409404792:android:41074b21de537e6825528d',
    messagingSenderId: '217409404792',
    projectId: 'aurasync-wearable-device',
    databaseURL: 'https://aurasync-wearable-device-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'aurasync-wearable-device.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAlN7ms3n7JCiEXXIjXxe5rMejTQ97KW9c',
    appId: '1:217409404792:ios:6af14b5e4e8b925125528d',
    messagingSenderId: '217409404792',
    projectId: 'aurasync-wearable-device',
    databaseURL: 'https://aurasync-wearable-device-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'aurasync-wearable-device.appspot.com',
    iosBundleId: 'com.example.hola',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAlN7ms3n7JCiEXXIjXxe5rMejTQ97KW9c',
    appId: '1:217409404792:ios:188765282afa596225528d',
    messagingSenderId: '217409404792',
    projectId: 'aurasync-wearable-device',
    databaseURL: 'https://aurasync-wearable-device-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'aurasync-wearable-device.appspot.com',
    iosBundleId: 'com.example.hola.RunnerTests',
  );
}