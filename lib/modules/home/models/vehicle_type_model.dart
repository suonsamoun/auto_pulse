import 'dart:convert';

import 'package:auto_pulse/modules/home/constants/image_constant.dart';

enum VehicleType {
  car,
  motorcycle,
  truck,
  bicycle,
  scooter,
}

class VehicleTypeModel {
  final VehicleType type;
  final String image;

  VehicleTypeModel({required this.type, required this.image});

  factory VehicleTypeModel.fromMap(Map<String, dynamic> data) {
    return VehicleTypeModel(type: data['type'], image: data['image']);
  }

  Map<String, dynamic> toMap() => {'type': type, 'image': image};

  factory VehicleTypeModel.fromJson(String data) {
    return VehicleTypeModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toMap());

  static List<VehicleTypeModel> getFakeVehicleTypes() {
    return [
      VehicleTypeModel(
        type: VehicleType.car,
        image: HomeImageConstant.car,
      ),
      VehicleTypeModel(
        type: VehicleType.motorcycle,
        image: HomeImageConstant.motor,
      ),
      VehicleTypeModel(
        type: VehicleType.truck,
        image: HomeImageConstant.truck,
      ),
      VehicleTypeModel(
        type: VehicleType.bicycle,
        image: HomeImageConstant.bike,
      ),
      VehicleTypeModel(
        type: VehicleType.scooter,
        image: HomeImageConstant.scooter,
      ),
    ];
  }
}
