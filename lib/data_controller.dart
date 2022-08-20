import 'dart:ffi';

import 'package:get/get.dart';

class DataController extends GetxController {
  static DataController to = Get.find();
  var answerLabel = 'Answer'.obs;
  var answerLabels = [].obs;

  int claculateRectangleArea() {
    int l = 10, b = 20;
    var area = l * b;
    return area;
  }

  String checkEvenOrOdd() {
    int a = 40;
    if (a % 2 == 0) {
      return 'Even number';
    } else {
      return 'Odd number';
    }
  }

  findASCIICodes() {
    String s = 'Hello world';
    for (int i = 0; i < s.length; i++) {
      print("Code unit for ${s[i]} is ${s.codeUnitAt(i)}");
    }

    print("Code unit list ${s.codeUnits}");
  }

  findASCIICode() {
    String name = 'Ch Bhargava Narasimha';
    for (int i = 0; i < name.length; i++) {
      print('ascii code for ${name[i]} is ${name.codeUnitAt(i)}');
    }
    print('is ${name.codeUnits}');
  }

  findASCIICodeForChar() {
    String name = 'Ch Bhargava Narasimha';
    //  return name.codeUnitAt(0); //  ASCII code for the letter at 0 index
    return name.codeUnits; //list of ASCII codes for the above string
  }

  convertToCelcius() {
    double dc = 32.5;
    var farenHeight = (1.8 * dc) + 32;
    return farenHeight;
  }

  swaping() {
    int a = 10, b = 15, temp = 0;
    temp = a;
    a = b;
    b = temp;
    print('values of a is $a and b is $b ');
  }

  isVowelOrConsonants() {
    String a = 'T'.toLowerCase();
    if (a == 'a' || a == 'e' || a == 'i' || a == 'o' || a == 'u') {
      return 'is Vowel';
    } else {
      return 'is Consonent';
    }
  }

  isVowelOrConsonant() {
    String a = 'A';
    if (a == 'a' ||
        a == 'e' ||
        a == 'i' ||
        a == 'o' ||
        a == 'u' ||
        a == 'A' ||
        a == 'E' ||
        a == 'I' ||
        a == 'O' ||
        a == 'U') {
      return 'is Vowel';
    } else {
      return 'is Consonent';
    }
  }

  largestOfThree() {
    int a =10, b = 20, c = 100;
    return a > b
        ? 'a is big'
        : (b > c ? 'b is big' : (c > a ? 'c is big' : 'a is big'));
  }

  findLeapYear() {
    var year = 000;
    if (year % 100 == 0 && year % 4 == 0 && year % 400 == 0) {
      return 'Leap Year';
    } else {
      return 'Not a Leap year';
    }
  }

  positiveNegaticeChecking() {
    var a = -10;
    if (a < 0) {
      return ' negative';
    } else if (a > 0) {
      return 'positive';
    } else {
      return 'zero';
    }
  }
  quandriaticEquation(){
    int a =10,b=20,c=120;
    
  }
}
