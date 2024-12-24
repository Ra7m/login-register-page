import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/register/view/screens/registerhome.dart';

void main() {
  runApp(const Mainpage());
}

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}
