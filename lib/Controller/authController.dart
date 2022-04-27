import 'package:ez_go_final/presentation/views/bottom_bar.dart';
import 'package:ez_go_final/presentation/views/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  String userId = '';

  signInWithEmailAndPassword({String email, String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Get.to(() => Home());
      });
    } on FirebaseAuthException catch (e) {
      print(e.message);
      Get.snackbar("Error", e.message, snackPosition: SnackPosition.BOTTOM);
    }
  }

  getCurrentUser() async {
    userId = FirebaseAuth.instance.currentUser.uid;
  }

  createAccountWithEZGO({String email, String password}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .whenComplete(() {
        signInWithEmailAndPassword(email: email, password: password);
      }).then((value) {
        Get.to(() => BottomNavBar());
      });
    } on FirebaseAuthException catch (e) {
      print(e.message);
      Get.snackbar("Error", e.message, snackPosition: SnackPosition.BOTTOM);
    }
    ;
  }

  signout() async {
    await FirebaseAuth.instance.signOut();
  }

  signInWithgmail() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) {
        Get.to(() => BottomNavBar());
      });
    } on FirebaseAuthException catch (e) {
      print(e.message);
      Get.snackbar("Error", e.message, snackPosition: SnackPosition.BOTTOM);
    }
    ;
  }
}
