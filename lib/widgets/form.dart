import 'package:flutter/material.dart';

class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


// DropdownButtonFormField(
//   items: ['Vitz', 'Prius'].map<DropdownMenuItem<String>>((value) {
//     return DropdownMenuItem<String>(
//         value: value, child: Text(value));
//   }).toList(),
//   value: null,
//   onChanged: (val) {},
//   validator: (val) => Validators.validate(val ?? '', 'Make'),
//   style: const TextStyle(
//     fontSize: 14,
//     color: Colors.black,
//   ),
//   icon: const Icon(Icons.keyboard_arrow_down),
//   isDense: true,
//   decoration: InputDecoration(
//     labelText: 'Make',
//     labelStyle: const TextStyle(fontSize: 14),
//     hintStyle: const TextStyle(fontSize: 14),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(50),
//     ),
//     contentPadding: const EdgeInsets.symmetric(
//       vertical: 8,
//       horizontal: 10,
//     ),
//   ),
// ),