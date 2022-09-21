import 'package:flutter/material.dart';

circularProgress()
{
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(top:12),
    child: const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation(
        Color.fromARGB(255, 130, 4, 127),
      ),
    ),
  );
}