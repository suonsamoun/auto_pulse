class Validators {
  Validators();

  static String? phone(String value) {
    if (value.isEmpty) {
      return 'Please Enter Phone Number';
    } else if (value.isNotEmpty) {
      value = value.replaceAll(RegExp(r'^0+(?=.)'), '');
      bool mobileValid = RegExp(r'^(?:\+88||01)?(?:\d{8,9})$').hasMatch(value);
      return mobileValid ? null : 'Please Enter Valid Phone Number';
    }
    return null;
  }

  static String? email(String value) {
    if (value.isEmpty) {
      return 'Please Enter Email';
    } else if (value.isNotEmpty) {
      bool emailValid = RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(value);

      return emailValid ? null : 'Please Enter Valid Email';
    }
    return null;
  }

  static String? validate(String value, String fieldName) {
    if (value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }
}
