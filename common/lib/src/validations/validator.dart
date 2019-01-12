class Validator {
  /**
   * 
   *  is Empty 
   */

  static bool isStringEmpty(String value) {
    if (!value.isEmpty) {
      throw Exception("no data");
    }
    return true;
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
