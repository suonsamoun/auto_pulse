import '../models/vehicle_type_model.dart';

class FormHintUtil {
  FormHintUtil._();

  static String hint(String? vehicleType, String inputField) {
    final hints = {
      VehicleType.car.name: [
        {'name': 'eg. Toyota Prius 2010'},
        {'make': 'eg. Toyota'},
        {'model': 'eg. Prius - Full Options'}
      ],
      VehicleType.motorcycle.name: [
        {'name': 'eg. Honda Dream 2024'},
        {'make': 'eg. Honda'},
        {'model': 'eg. Dream'}
      ],
      VehicleType.truck.name: [],
      VehicleType.bicycle.name: [],
      VehicleType.scooter.name: [],
    };

    final matchingHints = hints[vehicleType];

    if (matchingHints != null) {
      final hint = matchingHints.firstWhere(
        (hint) => hint.keys.any((key) => key == inputField),
        orElse: () => <String, String>{},
      );

      if (hint.isNotEmpty) {
        return hint.values.first;
      }
    }

    return '';
  }
}
