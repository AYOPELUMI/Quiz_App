import 'dart:core';

class AppValidators{
  AppValidators._();
  static String? validatorEmptyString( String? fieldName, String? value){

    if(value == null || value.isEmpty){
      return  '${fieldName} is required';
    }
  return null;
  }

  static String? validateEmail(String? value){
   if(value == null || value.isEmpty){
      return  'email is required';
    }
        final emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if(!emailRegExp.hasMatch(value)){
      return 'invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value){
       if(value == null || value.isEmpty){
      return  'password is required';
    }
    if(value.length <8){
      return  'password must be at least 8 character long';
    }
  final passwordRegExp = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[-+_!@#$%^&*,.?]).+$");
    if (!(value.contains(passwordRegExp))) {
      return 'password must contains at least an uppercase, a number, a special symbol';
    }
    return null;
  }

}