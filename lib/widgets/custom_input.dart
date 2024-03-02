import 'package:flutter/material.dart';

Widget buildInputField(
    {required String label,
    required String placeholder,
    double height = 1,
    TextInputType keyboardType = TextInputType.text}) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.black)),
    ),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: placeholder,
            border: InputBorder.none,
          ),
          maxLines: height.round(),
          keyboardType: keyboardType,
        ),
      ],
    ),
  );
}
