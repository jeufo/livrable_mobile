import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCAsMJbC_MTac4meL202KtyMRmROwFCdgU",
            authDomain: "bagels-a1a65.firebaseapp.com",
            projectId: "bagels-a1a65",
            storageBucket: "bagels-a1a65.firebasestorage.app",
            messagingSenderId: "661108147095",
            appId: "1:661108147095:web:f5548a7ddcb9e54da27ad2"));
  } else {
    await Firebase.initializeApp();
  }
}
