import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAO2KWxWsKmYAs2QypddVT8PMSMsguUPPM",
            authDomain: "tfiosiudy.firebaseapp.com",
            projectId: "tfiosiudy",
            storageBucket: "tfiosiudy.appspot.com",
            messagingSenderId: "141479966661",
            appId: "1:141479966661:web:2008da733ab2a673defdac",
            measurementId: "G-6LWGCRS403"));
  } else {
    await Firebase.initializeApp();
  }
}
