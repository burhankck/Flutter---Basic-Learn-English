import 'package:flutter/material.dart';

class HataDiyalog extends StatelessWidget {

  final String? message;
  HataDiyalog({this.message});


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content:Text(message!),
      actions: [
        ElevatedButton(
          child: const Center(
            child: Text("TAMAM"),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 130, 4, 127),
            
          ),
          onPressed: (){
            Navigator.pop(context);
          },

        ),

      ],
      
    );
  }
}