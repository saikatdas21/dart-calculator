import 'dart:io';
import 'package:calculator_project/calculator_project.dart';

void main() {

  final calculator = Calculator();

  while (true) {

    print('\n======================================');
    print('          DART CALCULATOR');
    print('======================================');

    print('1.  Addition (+)');
    print('2.  Subtraction (-)');
    print('3.  Multiplication (*)');
    print('4.  Division (/)');
    print('5.  Sin');
    print('6.  Cos');
    print('7.  Tan');
    print('8.  Inverse Sin (asin)');
    print('9.  Inverse Cos (acos)');
    print('10. Inverse Tan (atan)');
    print('11. Square Root');
    print('12. Nth Root');
    print('13. Square');
    print('14. Cube');
    print('15. Power');
    print('16. Log (base 10)');
    print('17. Natural Log (ln)');
    print('18. Factorial');
    print('19. Exit');

    print('======================================');

    stdout.write('Choose an operation: ');
    String? choice = stdin.readLineSync();

    try {

      switch (choice) {

        // =========================
        // ADDITION
        // =========================

        case '1':
          double a = getNumber('Enter first number: ');
          double b = getNumber('Enter second number: ');

          print('Result = ${calculator.add(a, b)}');
          break;


        // =========================
        // SUBTRACTION
        // =========================

        case '2':
          double a = getNumber('Enter first number: ');
          double b = getNumber('Enter second number: ');

          print('Result = ${calculator.subtract(a, b)}');
          break;


        // =========================
        // MULTIPLICATION
        // =========================

        case '3':
          double a = getNumber('Enter first number: ');
          double b = getNumber('Enter second number: ');

          print('Result = ${calculator.multiply(a, b)}');
          break;


        // =========================
        // DIVISION
        // =========================

        case '4':
          double a = getNumber('Enter first number: ');
          double b = getNumber('Enter second number: ');

          print('Result = ${calculator.divide(a, b)}');
          break;


        // =========================
        // SIN
        // =========================

        case '5':
          double value = getNumber('Enter angle in degree: ');

          print('sin($value) = ${calculator.sin(value)}');
          break;


        // =========================
        // COS
        // =========================

        case '6':
          double value = getNumber('Enter angle in degree: ');

          print('cos($value) = ${calculator.cos(value)}');
          break;


        // =========================
        // TAN
        // =========================

        case '7':
          double value = getNumber('Enter angle in degree: ');

          print('tan($value) = ${calculator.tan(value)}');
          break;


        // =========================
        // INVERSE SIN
        // =========================

        case '8':
          double value = getNumber('Enter value (-1 to 1): ');

          print('asin($value) = ${calculator.asin(value)}°');
          break;


        // =========================
        // INVERSE COS
        // =========================

        case '9':
          double value = getNumber('Enter value (-1 to 1): ');

          print('acos($value) = ${calculator.acos(value)}°');
          break;


        // =========================
        // INVERSE TAN
        // =========================

        case '10':
          double value = getNumber('Enter value: ');

          print('atan($value) = ${calculator.atan(value)}°');
          break;


        // =========================
        // SQUARE ROOT
        // =========================

        case '11':
          double value = getNumber('Enter number: ');

          print('√$value = ${calculator.squareRoot(value)}');
          break;


        // =========================
        // NTH ROOT
        // =========================

        case '12':
          double value = getNumber('Enter number: ');
          double n = getNumber('Enter root degree: ');

          print('$n-root of $value = ${calculator.root(value, n)}');
          break;


        // =========================
        // SQUARE
        // =========================

        case '13':
          double value = getNumber('Enter number: ');

          print('$value² = ${calculator.square(value)}');
          break;


        // =========================
        // CUBE
        // =========================

        case '14':
          double value = getNumber('Enter number: ');

          print('$value³ = ${calculator.cube(value)}');
          break;


        // =========================
        // POWER
        // =========================

        case '15':
          double value = getNumber('Enter base: ');
          double exponent = getNumber('Enter power: ');

          print('$value^$exponent = '
              '${calculator.power(value, exponent)}');

          break;


        // =========================
        // LOG
        // =========================

        case '16':
          double value = getNumber('Enter number: ');

          print('log($value) = ${calculator.log(value)}');
          break;


        // =========================
        // NATURAL LOG
        // =========================

        case '17':
          double value = getNumber('Enter number: ');

          print('ln($value) = ${calculator.ln(value)}');
          break;


        // =========================
        // FACTORIAL
        // =========================

        case '18':
          int value = getNumber('Enter positive integer: ').toInt();

          print('$value! = ${calculator.factorial(value)}');
          break;


        // =========================
        // EXIT
        // =========================

        case '19':
          print('Calculator closed.');
          return;


        default:
          print('Invalid choice!');
      }

    } catch (e) {

      print('Error: $e');

    }

  }
}


// ======================================
// GET NUMBER FUNCTION
// ======================================

double getNumber(String message) {

  while (true) {

    stdout.write(message);

    String? input = stdin.readLineSync();

    double? number = double.tryParse(input ?? '');

    if (number != null) {
      return number;
    }

    print('Please enter a valid number.');
  }
}