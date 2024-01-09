import '../models/vehicle_type_model.dart';

class FormHintUtil {
  FormHintUtil._();

  static String hint(VehicleType vehicleType, String inputField) {
    final hints = {
      VehicleType.car: [
        {'name': 'eg. Toyota Prius 2010'},
        {'make': 'eg. Toyota'},
        {'model': 'eg. Prius - Full Options'}
      ],
      VehicleType.motorcycle: [
        {'name': 'eg. Honda Dream 2024'},
        {'make': 'eg. Honda'},
        {'model': 'eg. Dream'}
      ],
      VehicleType.truck: [],
      VehicleType.bicycle: [],
      VehicleType.scooter: [],
    };

    final matchingHints = hints[vehicleType];

    if (matchingHints != null) {
      final hint = matchingHints.firstWhere(
        (hint) => hint.keys.any((key) => key == inputField),
        orElse: () => null,
      );

      if (hint != null) {
        return hint.values.first;
      }
    }

    return '';
  }
}
