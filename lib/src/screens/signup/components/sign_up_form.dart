import 'package:flutter/material.dart';
import 'package:login_app/src/controllers/auth_controller.dart';
import 'package:login_app/src/extension/form_validate.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/textfiled_widget.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
    required this.isDark,
  }) : super(key: key);
  final bool isDark;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          TextFieldWidget(
            // keyboard: TextInputType.name,
            controller: nameController,
            hintText: "Full Name",
            icon: Icons.person,
            labelText: "Full Name",
            validator: (value) {
              if (value!.isEmpty) {
                return "Your Name is required";
              }
              return null;
            },
          ),
          TextFieldWidget(
            //keyboard: TextInputType.emailAddress,
            controller: emailController,
            hintText: "E-mail",
            icon: Icons.email,
            labelText: "E-mail",
            validator: (value) {
              if (value!.isEmpty) {
                return "Your Email is required";
              }
              return null;
            },
          ),
          TextFieldWidget(
            //keyboard: TextInputType.phone,
            controller: phoneController,
            hintText: "Phone No",
            icon: Icons.numbers,
            labelText: "Phone No",
            validator: (value) {
              if (value!.isEmpty) {
                return "Your Phone no. is required";
              } else if (isValidPhone(value)) {
                return "Your Phone no. is invalid";
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
              onPressed: () {},
              icon: const Icon(Icons.remove_red_eye_sharp),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Password is required";
              } else if (!isValidPassword(value)) {
                return "Your Password should contains A-Z,a-z,0-9 and a special character";
              }
              return null;
            },
          ),

          //* -- Elevated Button

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: dimensions(20, context),
            ),
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  AuthController.instance.registration(
                      emailController.text.trim(),
                      passwordController.text.trim(),
                      nameController.text.trim(),
                      phoneController.text.trim());
                }
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: dimensions(15, context),
                    )),
                  ),
              child: Text(
                tSignup.toUpperCase(),
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
