class AppValidator{

  /// Name Validate
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name.';
    }
    return null;
  }

  /// Email validate
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address.';
    }
    if (!RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$").hasMatch(value)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  /// Phone number Validator
  String validatePhoneNumber(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a phone number';
    }

    if (value.length < 10 || value.length > 15 || !RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Invalid phone number';
    }

    return "Validate Phone Number";
  }


  /// Amount Validator
  String validateAmount(String? value) {
    if (value!.isEmpty) {
      return 'Please enter an amount';
    }
    if (double.tryParse(value) == null) {
      return 'Please enter a valid number';
    }

    return "Validation Applied";
  }


  /// Account Number Validate
  String validateBankAccountNumber(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a bank account number';
    }
    if (value.length < 8 || value.length > 20) {
      return 'Invalid bank account number length';
    }

    return "Validate Account Number";
  }
}