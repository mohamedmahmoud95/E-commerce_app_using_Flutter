import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../Models/user.dart';
import 'cloud_firestore_services.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AppUser? _userFromFirebase(User? user) {
    return user != null
        ? AppUser(
            userID: user.uid,
          )
        : null;
  }

  Future<AppUser?> registerWithEmailAndPassword(
    String email,
    String password,
    VoidCallback onLoginSuccess,
    VoidCallback onLoginFailed,
  ) async {
    try {
      final authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      _userFromFirebase(authResult.user) == null
          ? currentAppUser = sampleAppUser
          : onLoginSuccess();

      currentAppUser = _userFromFirebase(authResult.user)!;
      DatabaseServices(uid: currentAppUser.userID).updateUserData(
          currentAppUser.firstName ?? 'firstName',
          currentAppUser.lastName ?? 'lastName'
      );

      return _userFromFirebase(authResult.user);
    } catch (e) {
      debugPrint(e.toString());
      onLoginFailed();
      return null;
    }
  }

  Future<AppUser?> loginWithEmailAndPassword(
    String email,
    String password,
    VoidCallback onLoginSuccess,
    VoidCallback onLoginFailed,
  ) async {
    try {
      final authResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Update the current user

      _userFromFirebase(authResult.user) == null
          ? currentAppUser = sampleAppUser
          : currentAppUser = _userFromFirebase(authResult.user)!;
      // Call the onLoginSuccess callback
      onLoginSuccess();
      return _userFromFirebase(authResult.user);
    } catch (e) {
      debugPrint(e.toString());

      // Call the onLoginFailed callback
      onLoginFailed();

      // Return null to indicate login failure
      return null;
    }
  }

  Future<AppUser?> signInAnonymously(
    VoidCallback onLoginSuccess,
    VoidCallback onLoginFailed,
  ) async {
    try {
      final authResult = await _auth.signInAnonymously();

      // Update the current user
      _userFromFirebase(authResult.user) == null
          ? currentAppUser = sampleAppUser
          : currentAppUser = _userFromFirebase(authResult.user)!;
      DatabaseServices(uid: currentAppUser.userID)
          .updateUserData(
          currentAppUser.firstName ?? 'firstName',
          currentAppUser.lastName ?? 'lastName',
          );

      // Call the onLoginSuccess callback
      onLoginSuccess();
      return _userFromFirebase(authResult.user);
    } catch (e) {
      debugPrint(e.toString());

      // Call the onLoginFailed callback
      onLoginFailed();

      // Return null to indicate login failure
      return null;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> resetPassword(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<void> deleteAccount(String email, String password) async {
    try {
      // Re-authenticate the user with their email and password
      AuthCredential credential = EmailAuthProvider.credential(
          email: '${FirebaseAuth.instance.currentUser?.email}',
          password: password);
      await FirebaseAuth.instance.currentUser
          ?.reauthenticateWithCredential(credential);

      // Delete the account
      await _auth.currentUser?.delete();

      // Account deletion successful
      debugPrint('Account deleted successfully :( ');
      logout();
    } catch (e) {
      // Handle any errors that occur during re-authentication or account deletion
      debugPrint('Error deleting account: $e');
    }
  }
}
