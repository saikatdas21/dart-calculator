import 'package:calculator_project/calculator_project.dart';
import 'package:test/test.dart';

void main() {
  group('Calculator Tests', () {

    test('Addition', () {
      final calculator = Calculator();

      expect(calculator.add(10, 20), 30);
    });

    test('Subtraction', () {
      final calculator = Calculator();

      expect(calculator.subtract(20, 10), 10);
    });

    test('Multiplication', () {
      final calculator = Calculator();

      expect(calculator.multiply(10, 5), 50);
    });

    test('Division', () {
      final calculator = Calculator();

      expect(calculator.divide(20, 5), 4);
    });

    test('Square', () {
      final calculator = Calculator();

      expect(calculator.square(5), 25);
    });

    test('Cube', () {
      final calculator = Calculator();

      expect(calculator.cube(3), 27);
    });

    test('Square Root', () {
      final calculator = Calculator();

      expect(calculator.squareRoot(25), 5);
    });

    test('Power', () {
      final calculator = Calculator();

      expect(calculator.power(2, 10), 1024);
    });

    test('Factorial', () {
      final calculator = Calculator();

      expect(calculator.factorial(5), 120);
    });

  });
}