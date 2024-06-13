import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCf7fmkB24gxx0-2FhaVwDg0PnQhWR2qNE",
            authDomain: "trip-969f5.firebaseapp.com",
            projectId: "trip-969f5",
            storageBucket: "trip-969f5.appspot.com",
            messagingSenderId: "1063864231993",
            appId: "1:1063864231993:web:f541a280b07931815a05e8",
            measurementId: "G-2E0TER759D"));
  } else {
    await Firebase.initializeApp();
  }
}
