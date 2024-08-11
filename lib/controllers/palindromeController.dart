import 'package:get/get.dart';

class PalindromeController extends GetxController {
  var palindromeText = ''.obs;
  var result = ''.obs;

  void checkPalindrome() {
    String reversedText = palindromeText.value.split('').reversed.join('');
    if (palindromeText.value == reversedText) {
      result.value = '"${palindromeText.value}" is a palindrome';
    } else {
      result.value = '"${palindromeText.value}" is not a palindrome';
    }
  }
}
