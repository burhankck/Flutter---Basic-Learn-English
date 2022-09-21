import 'package:flutter/material.dart';

class CustomTextF extends StatelessWidget {
  
  final TextEditingController? controller;
  final IconData? data;
  final String? hintText;
  bool? isObsecre = true;
  bool? enabled = true;

  CustomTextF({
    this.controller,
    this.data,
    this.hintText,
    this.isObsecre,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),

      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        obscureText: isObsecre!,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            data,
            color: Color.fromARGB(255, 130, 4, 127),
          ),
          focusColor: Theme.of(context).primaryColor,
          hintText: hintText,
        ),
      ),
      
    );
  }
}