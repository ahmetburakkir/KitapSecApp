import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return FirebaseOptions(
      apiKey: "SENİN_API_KEY",
      authDomain: "SENİN_AUTH_DOMAIN",
      projectId: "SENİN_PROJECT_ID",
      storageBucket: "SENİN_STORAGE_BUCKET",
      messagingSenderId: "SENİN_MESSAGING_SENDER_ID",
      appId: "SENİN_APP_ID",
    );
  }
}
