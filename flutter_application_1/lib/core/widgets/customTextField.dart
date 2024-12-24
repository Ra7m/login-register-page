// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/bordertextfield.dart';

class Customtextfield extends StatelessWidget {
  Customtextfield(
      {super.key,
      required this.perfix,
      required this.validator,
      // required this.suffix,
      required this.textInputType,
      required this.label,
      required this.hint});
  final TextInputType textInputType;
  final String label;
  final String hint;
  final TextEditingController controller = TextEditingController();
  final TextInputType keybord = TextInputType.text;
  final IconData perfix;
  String? Function(String?)? validator;
  // final IconData suffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        keyboardType: keybord,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(perfix),
            // suffixIcon: Icon(suffix),
            suffix: IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(Icons.highlight_remove_outlined),
            ),
            labelText: label,
            hintText: hint,
            enabledBorder: border(color: Colors.teal, radius: 10),
            focusedBorder: border(color: Colors.black, radius: 10)),
      ),
    );
  }
}
