import 'package:flutter/material.dart';

class HomeAddMyCarPage extends StatefulWidget {
  const HomeAddMyCarPage({super.key});

  @override
  State<HomeAddMyCarPage> createState() => _HomeAddMyCarPageState();
}

class _HomeAddMyCarPageState extends State<HomeAddMyCarPage> {
  final _formKey = GlobalKey<FormState>();

  String? _formInputVehicleBrand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Vehicle'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const Text('Vehicle Information'),
            const SizedBox(height: 8),
            DropdownButtonFormField(
              items: ['Toyota', 'Honda'].map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              value: _formInputVehicleBrand,
              onChanged: (value) {
                setState(() => _formInputVehicleBrand = value);
              },
              isDense: true,
              isExpanded: true,
              hint: const Text('Select model'),
              icon: const Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField(
              items: ['Vitz', 'Prius'].map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              value: null,
              onChanged: (value) {
                // setState(() => _formInputVehicleBrand = value);
              },
              isDense: true,
              isExpanded: true,
              hint: const Text('Select brand'),
              icon: const Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter carplate number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter current milleage',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Complete',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).hintColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
