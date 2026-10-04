import 'dart:math' as math;

class Calculator {

  // =========================
  // BASIC OPERATIONS
  // =========================

  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw Exception("Cannot divide by zero");
    }

    return a / b;
  }


  // =========================
  // TRIGONOMETRY
  // =========================

  double toRadians(double degree) {
    return degree * math.pi / 180;
  }

  double sin(double degree) {
    return math.sin(toRadians(degree));
  }

  double cos(double degree) {
    return math.cos(toRadians(degree));
  }

  double tan(double degree) {
    return math.tan(toRadians(degree));
  }


  // =========================
  // INVERSE TRIGONOMETRY
  // Result is in Degree
  // =========================

  double asin(double value) {
    if (value < -1 || value > 1) {
      throw Exception("asin input must be between -1 and 1");
    }

    return math.asin(value) * 180 / math.pi;
  }

  double acos(double value) {
    if (value < -1 || value > 1) {
      throw Exception("acos input must be between -1 and 1");
    }

    return math.acos(value) * 180 / math.pi;
  }

  double atan(double value) {
    return math.atan(value) * 180 / math.pi;
  }


  // =========================
  // ROOT
  // =========================

  double squareRoot(double value) {
    if (value < 0) {
      throw Exception("Cannot calculate square root of negative number");
    }

    return math.sqrt(value);
  }

  double root(double value, double n) {
  if (n == 0) {
    throw Exception("Root degree cannot be zero");
  }

  if (value < 0 && n % 2 == 0) {
    throw Exception("Even root of negative number is not real");
  }

  if (value < 0) {
    return -math.pow(-value, 1 / n).toDouble();
  }

  return math.pow(value, 1 / n).toDouble();
}


  // =========================
  // POWER
  // =========================

  double square(double value) {
    return math.pow(value, 2).toDouble();
  }

  double cube(double value) {
    return math.pow(value, 3).toDouble();
  }

  double power(double value, double exponent) {
    return math.pow(value, exponent).toDouble();
  }


  // =========================
  // LOGARITHM
  // =========================

  // log10
  double log(double value) {
    if (value <= 0) {
      throw Exception("Log input must be greater than 0");
    }

    return math.log(value) / math.log(10);
  }

  // Natural logarithm
  double ln(double value) {
    if (value <= 0) {
      throw Exception("Ln input must be greater than 0");
    }

    return math.log(value);
  }


  // =========================
  // FACTORIAL
  // =========================

  int factorial(int n) {
    if (n < 0) {
      throw Exception(
        "Factorial is not defined for negative numbers"
      );
    }

    int result = 1;

    for (int i = 1; i <= n; i++) {
      result *= i;
    }

    return result;
  }
}