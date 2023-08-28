import 'package:flutter/material.dart';
import 'package:our_first_prgrm/constants/sample.dart';
import 'package:our_first_prgrm/edit_profile.dart';
import 'package:our_first_prgrm/listview.dart';
import 'package:our_first_prgrm/listviewSample.dart';
import 'package:our_first_prgrm/login.dart';
import 'package:our_first_prgrm/reg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
