import 'dart:convert';

class VehicleTypeModel {
  final String name;
  final String image;

  VehicleTypeModel({required this.name, required this.image});

  factory VehicleTypeModel.fromMap(Map<String, dynamic> data) {
    return VehicleTypeModel(name: data['name'], image: data['image']);
  }

  Map<String, dynamic> toMap() => {'name': name, 'image': image};

  factory VehicleTypeModel.fromJson(String data) {
    return VehicleTypeModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toMap());

  static List<VehicleTypeModel> getFakeVehicleTypes() {
    return [
      VehicleTypeModel(name: 'Car', image: 'car.png'),
      VehicleTypeModel(name: 'Motorcycle', image: 'motorcycle.png'),
      VehicleTypeModel(name: 'Truck', image: 'truck.png'),
      VehicleTypeModel(name: 'Bicycle', image: 'bicycle.png'),
      VehicleTypeModel(name: 'Scooter', image: 'scooter.png'),
    ];
  }
}
