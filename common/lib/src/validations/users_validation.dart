import 'dart:async';
import './validator.dart';

class UsersValidation {
  Validator validator = Validator();
  /**
   * 
   * List of User fileds
   */

  final userValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (data, sink) {});

  final nameValidator = StreamTransformer<String, String>.fromHandlers(
    // Handle incoming email data
    handleData: (email, sink) {
      // rules
      bool isEmpty = Validator.isStringEmpty(email);
      bool maxLenght = Validator.maxLenght(email, 6);
      // bool minLenght = Validator.isStringEmpty(email);

      if (isEmpty) {
        sink.addError("write somthing");
      } else if (maxLenght) {
        sink.addError("max 7");
      } else {
        sink.add(email);
      }

      print("$email from validator stream ");
    },
  );
}
