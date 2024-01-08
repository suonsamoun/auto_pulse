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

  String? _inputVehicleMake;
  String? _inputVehicleModel;
  String? _inputVehicleYear;
  String? _inputVehicleName;
  String? _inputVehicleImage;

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
              Container(
                width: double.infinity,
                height: 150.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                style: const TextStyle(
                  fontSize: 14,
                ),
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'eg. Toyota Prius 2010',
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
                onSaved: (val) => _inputVehicleName = val,
                validator: (val) =>
                    Validators.validate(val ?? '', 'Vehicle name'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                style: const TextStyle(
                  fontSize: 14,
                ),
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Make',
                  hintMaxLines: 2,
                  hintText: 'eg. Toyota',
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
                onSaved: (val) => _inputVehicleMake = val,
              ),
              const SizedBox(height: 8),
              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                style: const TextStyle(
                  fontSize: 14,
                ),
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Model',
                  hintText: 'eg. Prius - Full Options',
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
                onSaved: (val) => _inputVehicleModel = val,
              ),
              const SizedBox(height: 8),
              TextFormField(
                textAlignVertical: TextAlignVertical.center,
                style: const TextStyle(
                  fontSize: 14,
                ),
                cursorHeight: 16,
                decoration: InputDecoration(
                  labelText: 'Year',
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
                onSaved: (val) => _inputVehicleYear = val,
              ),
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
                  ),
                ),
                child: Text(
                  'Save',
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
