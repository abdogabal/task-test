import 'dart:io';

class Calculator {
  Calculator() {}

  double add(double operand1, double operand2) {
    return operand1 + operand2;
  }

  double subtract(double operand1, double operand2) {
    return operand1 - operand2;
  }

  double multiply(double operand1, double operand2) {
    return operand1 * operand2;
  }

  double divide(double operand1, double operand2) {
    return operand1 / operand2;
  }
}

void main() {
  Calculator c = new Calculator();

  while (true) {
    try {
      print("Enter the operation (+, -, *, /) or q to quit:");
      String? operation = stdin.readLineSync();
      if (operation == "q") {
        break;
      }
      print('Enter the first operand:');
      String? operand1 = stdin.readLineSync();
      double operand1Double = double.parse(operand1!);
      print('Enter the second operand:');
      String? operand2 = stdin.readLineSync();
      double operand2Double = double.parse(operand2!);

      if (operation == "+") {
        print(c.add(operand1Double, operand2Double));
      } else if (operation == "-") {
        print(c.subtract(operand1Double, operand2Double));
      } else if (operation == "*") {
        print(c.multiply(operand1Double, operand2Double));
      } else if (operation == "/") {
        print(c.divide(operand1Double, operand2Double));
      } else {
        print("invalid user Operation");
      }
    } catch (e) {
      print("Error : $e");
    }
  }
}
