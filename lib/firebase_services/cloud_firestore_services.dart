import 'package:cloud_firestore/cloud_firestore.dart';

import '../Models/product.dart';
import '../models/user.dart';

class DatabaseServices {
  final String? uid; // userID of the user we are updating his/her data
  DatabaseServices({this.uid});

  // create a collection reference
  final CollectionReference userDataCollection =
  FirebaseFirestore.instance.collection("userData");

  Future updateUserData(String firstName, String lastName, ) async {
    return await userDataCollection.doc(uid).set({
      'firstName': firstName,
      'lastName': lastName,
    });
  }



  Future updateUserCart( List<Product> inCartProducts, ) async {
    return await userDataCollection.doc(uid).set({
      'productsInCart': inCartProducts,
    });
  }


  // User data from snapshot
  AppUser _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return AppUser(

      firstName: snapshot.get('firstName'),
      inCartProducts: snapshot.get('inCartProducts'),
    );
  }



}