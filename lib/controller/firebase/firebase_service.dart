import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static Future<bool> addUserService({
    required String name,
    required String id,
    required String phone,
    required String roll,
    required String collage,
    required String dep,
  }) async {
    try {
      var data = {
        "name": name,
        "id": id,
        "phone": phone,
        "roll": roll,
        "collage": collage,
        "dep": dep
      };
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      await firebaseFirestore.collection("user data").add(data);
      return true;
    } catch (e) {
      e.toString();
    }
    return false;
  }
}
