import 'package:flutter/material.dart';

class TextFieldPasswordSOSWidget extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;

  const TextFieldPasswordSOSWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
       validator: (value) {
        if (value.toString().isEmpty) {
          return 'Informe uma senha de 4 dígitos para continuar';
        } else if (value.toString().length < 4) {
          return 'Senha não é válida';
        }

        return null;
      },

       
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}