extension ExtInt on int{
  bool isPerfectSquare() {
    int i = 1;
    int number = this;
    while (number > 0) {
      number = number - i;
      i = i + 2;
    }
    return number == 0;
  }

  bool isPerfectNumber() {
    int number = this;
    int count = 0;
    if (number <= 0) {
      return false;
    }

    for (int i = 1; i < number; i++) {
      if (number % i == 0) {
        count += i;
      }
    }
    return count == number;
  }

  bool isUglyNumber() {
    int number = this;

    if (number <= 0) {
      return false;
    }
    if (number % 2 == 0 && number % 3 == 0) {
      return true;
    }
    if (number % 5 == 0) {
      return true;
    }
    return false;
  }

  int addDigits() {
    int number = this;
    int digitalRoot = 0;
    while (number > 0) {
      digitalRoot += number % 10;
      number = number ~/ 10;

      if (number == 0 && digitalRoot > 9) {
        number = digitalRoot;
        digitalRoot = 0;
      }
    }
    return digitalRoot;
  }
}

extension ExtString on String{
  bool isAnagram(String str1, String str2) {
    String result(String str) =>
        (str.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]', caseSensitive: false), '').split('')..sort()).join('');
    return result(str1) == result(str2);
  }

  String reversedString(String str){
    String result = '';
    result = str.split('').reversed.join();
    return result;
  }

  
}