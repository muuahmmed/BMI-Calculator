import 'dart:io';

void main() {

  void operation(){
    print('Enter the first number:');
    int num1 = int.parse(stdin.readLineSync()!);
    print('Enter the second number:');
    int num2 = int.parse(stdin.readLineSync()!);
    print('What operation do you want to perform?');
    String operation = stdin.readLineSync()!;
    if (operation == '+') {
      print('$num1 + $num2 = ${num1 + num2}');
    } else if (operation == '-') {
      print('$num1 - $num2 = ${num1 - num2}');
    } else if (operation == '*') {
      print('$num1 * $num2 = ${num1 * num2}');
    } else if (operation == '/') {
      print('$num1 / $num2 = ${num1 / num2}');
    }
  }

  void theHundred() {
    print('Enter your age:');
    int age = int.parse(stdin.readLineSync()!);
    print('You are $age years old');
    print('After ${100 - age} years, you will be 100 years old');
  }


  void list() {
    List<int> A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    print('Numbers less than 5:');
    for (int i = 0; i < A.length; i++) {
      if (A[i] < 5) {
        print(A[i]);
      }
    }
  }


  void num() {
    print('Enter a number: ');
    int number = int.parse(stdin.readLineSync()!);

    print('Divisors of $number are:');
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        print(i);
      }
    }
  }


  void twoLists() {
    List<int> A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List<int> B = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

    print('Common elements in the two lists:');
    for (int i = 0; i < A.length; i++) {
      for (int j = 0; j < B.length; j++) {
        if (A[i] == B[j]) {
          print(A[i]);
        }
      }
    }
  }


  void primeNum() {
    print('Enter a number: ');
    int number = int.parse(stdin.readLineSync()!);

    if (number <= 1) {
      print('$number is not a prime number.');
      return;
    }

    bool isPrime = true;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print('$number is a prime number.');
    } else {
      print('$number is not a prime number.');
    }
  }

  // operation();
  // theHundred();
  // list();
  // num();
  // twoLists();
  // primeNum();
}
