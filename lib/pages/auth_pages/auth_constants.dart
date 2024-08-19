import 'package:flutter/material.dart';

final decoration = InputDecoration(
  errorStyle: const TextStyle(
    height: 0.2,
    fontSize: 11,
    color: Color.fromARGB(255, 190, 23, 14),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  focusColor: Colors.blue,
  focusedBorder: const OutlineInputBorder(),
);
