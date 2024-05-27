// File generated by FlutterFire CLI.
// Modified for FLAVOR. @kotaro
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members

import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import 'package:hakondate/util/environment.dart';

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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        switch (Environment.flavor) {
          case Flavor.dev:
            return androidDev;
          case Flavor.stg:
            return androidStg;
          case Flavor.prod:
            return androidProd;
        }
      case TargetPlatform.iOS:
        switch (Environment.flavor) {
          case Flavor.dev:
            return iosDev;
          case Flavor.stg:
            return iosStg;
          case Flavor.prod:
            return iosProd;
        }
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

  static const FirebaseOptions androidDev = FirebaseOptions(
    apiKey: 'AIzaSyBdebemHmmqs4JLRlV5LJvHvP6TBCLtooQ',
    appId: '1:37711418622:android:7a7ca06b1b80af4c8ec1af',
    messagingSenderId: '37711418622',
    projectId: 'hakondate-develop',
    storageBucket: 'hakondate-develop.appspot.com',
  );

  static const FirebaseOptions androidStg = FirebaseOptions(
    apiKey: 'AIzaSyB7W9UV7NqTAvng2wMlRVNzvapUUxWtTAo',
    appId: '1:852115917987:android:aabefb12e6a966e7420316',
    messagingSenderId: '852115917987',
    projectId: 'hakondate-staging',
    storageBucket: 'hakondate-staging.appspot.com',
  );

  static const FirebaseOptions androidProd = FirebaseOptions(
    apiKey: 'AIzaSyDhlZiHudKyE_Q8RnDF9vdlP3sPKqb7j_o',
    appId: '1:81098517249:android:2f13b94ec571e8d6748900',
    messagingSenderId: '81098517249',
    projectId: 'hakondate-production',
    storageBucket: 'hakondate-production.appspot.com',
  );

  static const FirebaseOptions iosDev = FirebaseOptions(
    apiKey: 'AIzaSyAU2Kzi9yamHkOolCJrL7wOVcvU2MSnBPc',
    appId: '1:37711418622:ios:73a0e770666942aa8ec1af',
    messagingSenderId: '37711418622',
    projectId: 'hakondate-develop',
    storageBucket: 'hakondate-develop.appspot.com',
    iosClientId: '37711418622-g293thetb0d0p8fmm7ul3170elhgc464.apps.googleusercontent.com',
    iosBundleId: 'org.hakondate.dev',
  );

  static const FirebaseOptions iosStg = FirebaseOptions(
    apiKey: 'AIzaSyDUA4C92JkRJPesBR32_K8CJGH1dUfBXNw',
    appId: '1:852115917987:ios:936a56562d9c3698420316',
    messagingSenderId: '852115917987',
    projectId: 'hakondate-staging',
    storageBucket: 'hakondate-staging.appspot.com',
    iosClientId: '852115917987-k6eb6m9mchn6ksabom2g4fl69tud4c1f.apps.googleusercontent.com',
    iosBundleId: 'org.hakondate.stg',
  );

  static const FirebaseOptions iosProd = FirebaseOptions(
    apiKey: 'AIzaSyBX5jGRs49wes2uWSxOIC3P3hHfr-CnaHA',
    appId: '1:81098517249:ios:98f5009c2d61bb91748900',
    messagingSenderId: '81098517249',
    projectId: 'hakondate-production',
    storageBucket: 'hakondate-production.appspot.com',
    iosClientId: '81098517249-hfg8014ol2kp96vtss7pd5g5gkuvterd.apps.googleusercontent.com',
    iosBundleId: 'org.hakondate',
  );
}
