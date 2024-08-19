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
    apiKey: 'AIzaSyAiS-FPTWi_HzgYJq27_U8zBjjF2ViTrHM',
    appId: '1:158612413254:web:48a0344d82402fbd52a347',
    messagingSenderId: '158612413254',
    projectId: 'doh-landrine-chatify',
    authDomain: 'doh-landrine-chatify.firebaseapp.com',
    storageBucket: 'doh-landrine-chatify.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5gfmErYI5Gm5ps34yK-aHq9yecAG8t-k',
    appId: '1:158612413254:android:2baa6827ea69647c52a347',
    messagingSenderId: '158612413254',
    projectId: 'doh-landrine-chatify',
    storageBucket: 'doh-landrine-chatify.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCiPbGKRzC7ZZOAOvyPEo4X1Lvl4p7FQOQ',
    appId: '1:158612413254:ios:cf4b7644c534654f52a347',
    messagingSenderId: '158612413254',
    projectId: 'doh-landrine-chatify',
    storageBucket: 'doh-landrine-chatify.appspot.com',
    iosBundleId: 'com.example.chatify',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAiS-FPTWi_HzgYJq27_U8zBjjF2ViTrHM',
    appId: '1:158612413254:web:5aa1247567199f6652a347',
    messagingSenderId: '158612413254',
    projectId: 'doh-landrine-chatify',
    authDomain: 'doh-landrine-chatify.firebaseapp.com',
    storageBucket: 'doh-landrine-chatify.appspot.com',
  );
}
