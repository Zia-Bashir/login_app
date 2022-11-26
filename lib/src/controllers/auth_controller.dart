import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_app/src/screens/home/home_screen.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late Rx<User?> _user;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      // Get.to(() => const LoginScreen()); //* ---- login Screen ----
      Get.toNamed("/"); //* ---- Splash Screen -----
    } else {
      Get.offAll(() => const HomeScreen()); //* ---- Welcome Screen ----
    }
  }

  registration(String email, password, name, phone) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {
                _firestore.collection("UserData").doc(value.user!.uid).set({
                  "email": value.user!.email,
                  "name": name,
                  "phone": phone,
                }),
              });
    } catch (e) {
      Get.snackbar("About User", "User Message",
          titleText: const Text("Account Creation Failed"),
          snackPosition: SnackPosition.BOTTOM,
          messageText: Text(e.toString()));
    }
  }

  login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User Message",
          titleText: const Text("Login Failed"),
          snackPosition: SnackPosition.BOTTOM,
          messageText: Text(e.toString()));
    }
  }

  signOut() async {
    await auth.signOut();
  }
}
