// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/customTextField.dart';
import 'package:flutter_application_1/features/register/view/screens/registerhome.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _MyAppState();
}

class _MyAppState extends State<homepage> {
  TextEditingController usernme = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conpassword = TextEditingController();
  TextEditingController id = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState!.validate()) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/images/rb_739.png'),
                  width: 200,
                  height: 200,
                ),
              ),
              Customtextfield(
                  perfix: Icons.person,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your username';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  label: 'Username',
                  hint: 'enter your username'),
              // const SizedBox(
              //   height: 4,
              // ),
              Customtextfield(
                  perfix: Icons.email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your email';
                    }
                    return null;
                  },
                  textInputType: TextInputType.emailAddress,
                  label: 'Email',
                  hint: 'enter your email'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: validate,
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: const Text('Don`t have an account ?  Register',
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
