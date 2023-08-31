import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel {

  String? email;
  String? name;

  String? phone;

  String? age;

  String? gender;


  UserModel({this.email, this.name, this.phone, this.age, this.gender});

  Map<String, dynamic> toJason() =>
      {
        'name': name,
        'phone': phone,
        'email': email,
        'age': age,
        'gender': gender,
      };


  factory UserModel.fromMap(Map<String, dynamic> jason) =>
      UserModel(
        name: jason["name"] == null ? null : jason["name"],
        email: jason["email"] == null ? null : jason["email"],
        phone: jason["phone"] == null ? null : jason["phone"],
        age: jason["age"] == null ? null : jason["age"],
        gender: jason["gender"] == null ? null : jason["gender"],
      );

}
  UserProvider() async {

   String documentId = 'your_document_id';
   CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
   DocumentSnapshot documentSnapshot = await usersCollection.doc(documentId).get();

   if (documentSnapshot.exists) {
   Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
   // Access individual fields from the data map
   String name = data['name'];
   String email = data['email'];
   // ...
   }

  UserModel? userModel;
  String? userEmail = FirebaseAuth.instance.currentUser!.email;

  Future<UserModel?> getUserData() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc()
        .get()
        .then((value) {
      userModel = UserModel.fromMap(value.data()!);
       print(userModel);
       print(value.data());
      return userModel;
    }
    );
  }
}
