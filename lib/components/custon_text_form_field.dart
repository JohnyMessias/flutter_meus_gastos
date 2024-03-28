import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomTextFormFild extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final String? initialValue;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const CustomTextFormFild ({
    Key? key,
    required this.hintText,
    this.labelText,
    this.initialValue,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: TextFormField(
        initialValue: initialValue,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          filled: true,
          fillColor: Colors.grey[300],
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
