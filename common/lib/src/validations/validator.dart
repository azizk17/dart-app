class Validator {
  /**
   * 
   *  is Empty 
   */

  static bool isEmpty(String value) {
    if (!value.isEmpty) {
      return true;
    }
    return false;
  }

  static bool maxLenght(String val, int max) {
    return val.length > max;
  }
}
