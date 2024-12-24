import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/customTextField.dart';
import 'package:flutter_application_1/features/loginf/view/screens/home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                      width: 150,
                      height: 150,
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
                  Customtextfield(
                      perfix: Icons.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your phone';
                        }
                        return null;
                      },
                      textInputType: TextInputType.number,
                      label: 'Phone',
                      hint: 'enter your Phone'),
                  Customtextfield(
                      perfix: Icons.lock,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      },
                      textInputType: TextInputType.number,
                      label: 'Password',
                      hint: 'enter your password'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 35,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: validate,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          'Register',
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
                                builder: (context) => const homepage()));
                      },
                      child: const Text('Already have an account ? Login',
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          )))
                ],
              )),
        ));
  }
}
