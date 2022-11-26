import 'package:flutter/Material.dart';
import 'package:login_app/src/controllers/auth_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        onPressed: (() {
          AuthController.instance.signOut();
        }),
        child: const Text("SignOut"),
      )),
    );
  }
}
