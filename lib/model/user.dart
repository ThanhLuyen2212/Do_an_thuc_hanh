import 'package:cloud_firestore/cloud_firestore.dart';

class myUser {
  String name;
  String email;
  String uid;

  myUser({required this.name, required this.email, required this.uid});

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'uid': uid,
      };

  // firebase - app (user)
  static myUser fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return myUser(
        name: snapshot['name'], email: snapshot['email'], uid: snapshot['uid']);
  }
}
