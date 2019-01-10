class Validator {
  /**
   * 
   *  is Empty 
   */

  static bool isStringEmpty(String value) {
    return value.isEmpty;
  }

  static bool required(inputValue) {
    if (inputValue.lenght > 5) {
      return true;
    } else {
      return false;
    }
  }

  static bool maxLenght(String val, int max) {
    return val.length > max;
  }
}
