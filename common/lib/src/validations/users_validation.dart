import 'dart:async';
import './validator.dart';

class UsersValidation {
  /**
   *    ! Validation using Streams
   * 
   */
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
      bool maxLenght = Validator.maxLenght(email, 6);
      // bool minLenght = Validator.isStringEmpty(email);

      if (maxLenght) {
        sink.addError("write somthing");
      } else {
        sink.add(email);
      }
    },
  );
}
