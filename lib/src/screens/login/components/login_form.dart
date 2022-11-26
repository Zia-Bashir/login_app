import 'package:flutter/material.dart';
import 'package:login_app/src/controllers/auth_controller.dart';
import 'package:login_app/src/extension/form_validate.dart';
import 'package:login_app/src/screens/login/components/forget_password_btn.dart';
import 'package:login_app/src/widgets/textfiled_widget.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text.dart';
import '../../../utils/dimensions.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
    required this.isDark,
  }) : super(key: key);
  final bool isDark;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: _formKey,
      child: Column(
        children: [
          TextFieldWidget(
            controller: emailController,
            hintText: "E-mail",
            icon: Icons.email,
            labelText: "E-mail",
            validator: (value) {
              if (value!.isEmpty) {
                return "Your Email is required";
              } else if (!isValidEmail(value)) {
                return "Enter your valid Email";
              }
              return null;
            },
          ),
          TextFieldWidget(
            controller: passwordController,
            hintText: "Password",
            labelText: "Password",
            icon: Icons.password,
            obscureText: true,
            suffixIcon: IconButton(
                onPressed: () {}, icon: const Icon(Icons.remove_red_eye_sharp)),
            validator: (value) {
              if (value!.isEmpty) {
                return "Password is required";
              } else if (!isValidPassword(value)) {
                return "Your Password should contains A-Z,a-z,0-9 and a special character";
              }
              return null;
            },
          ),
          //* -- Forget Password Text

          Container(
            padding: EdgeInsets.only(
                right: dimensions(10, context),
                bottom: dimensions(20, context)),
            width: double.infinity,
            alignment: Alignment.topRight,
            child: const ForgetPasswordButton(),
          ),

          //* -- Elevated Button

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: dimensions(20, context),
            ),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  AuthController.instance.login(emailController.text.trim(),
                      passwordController.text.trim());
                }
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: dimensions(15, context),
                    )),
                  ),
              child: Text(
                tLogin.toUpperCase(),
                style: widget.isDark
                    ? Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: AppColors.darkColor,
                        fontSize: dimensions(16, context))
                    : Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.white, fontSize: dimensions(16, context)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
