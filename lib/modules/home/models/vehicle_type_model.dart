import 'dart:convert';

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
      VehicleTypeModel(type: VehicleType.car, image: 'car.png'),
      VehicleTypeModel(type: VehicleType.motorcycle, image: 'motorcycle.png'),
      VehicleTypeModel(type: VehicleType.truck, image: 'truck.png'),
      VehicleTypeModel(type: VehicleType.bicycle, image: 'bicycle.png'),
      VehicleTypeModel(type: VehicleType.scooter, image: 'scooter.png'),
    ];
  }
}
