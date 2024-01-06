import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/validator.dart';

class HomeAddVehicleFormPage extends StatefulWidget {
  const HomeAddVehicleFormPage({super.key});

  @override
  State<HomeAddVehicleFormPage> createState() => _HomeAddVehicleFormPageState();
}

class _HomeAddVehicleFormPageState extends State<HomeAddVehicleFormPage> {
  final _formKey = GlobalKey<FormState>();

  String? _formInputVehicleBrand;
  String? _formInputMillegue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'My Vehicle',
          style: TextStyle(fontSize: 16.sp),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              const SizedBox(height: 80),
              DropdownButtonFormField(
                items: ['Vitz', 'Prius'].map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                value: null,
                onChanged: (val) {},
                validator: (val) => Validators.validate(val ?? '', 'Brand'),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                isDense: true,
                decoration: InputDecoration(
                  labelText: 'Brand',
                  labelStyle: const TextStyle(fontSize: 14),
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 10,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  cursorHeight: 16,
                  decoration: InputDecoration(
                    labelText: 'Millegue',
                    hintText: 'Enter current mileage',
                    hintMaxLines: 2,
                    alignLabelWithHint: true,
                    labelStyle: const TextStyle(fontSize: 14),
                    hintStyle: const TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 10,
                    ),
                  ),
                  onSaved: (val) => _formInputMillegue = val,
                  validator: (val) => Validators.validate(val!, 'Millegue')),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue[50],
                  minimumSize: const Size(200, 45),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 10,
                  ), // Adjust the vertical padding
                  // Other button styling properties can be added here
                ),
                child: Text(
                  'Complete',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
