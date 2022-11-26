import 'package:flutter/material.dart';
import 'package:login_app/src/utils/dimensions.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.color,
    this.suffixIcon,
    this.obscureText = false,
    required this.labelText,
    required this.validator,
    this.keyboard,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final Color? color;
  final IconButton? suffixIcon;
  final bool obscureText;
  final String labelText;
  final String? Function(String?)? validator;
  final TextInputType? keyboard;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: dimensions(20, context)),
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: TextFormField(
            // keyboardType: keyboard,
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              labelText: labelText,
              suffixIcon: suffixIcon,
              prefixIcon: Icon(
                icon,
                color: color,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(dimensions(30, context)),
              ),
            ),
            validator: validator,
          ),
        ),
        SizedBox(height: dimensions(15, context))
      ],
    );
  }
}
