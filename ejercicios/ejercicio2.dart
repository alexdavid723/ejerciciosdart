class Operacion {
  double suma(double a, double b) {
    return a + b;
  }

  double resta(double a, double b) {
    return a - b;
  }

  double multiplicacion(double a, double b) {
    return a * b;
  }
}

class CalculadoraAvanzada extends Operacion {
  double division(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw Exception("No se puede dividir por cero.");
    }
  }
}

void main() {
  final calculadora = CalculadoraAvanzada();

  double resultadoSuma = calculadora.suma(5, 3);
  double resultadoResta = calculadora.resta(10, 4);
  double resultadoMultiplicacion = calculadora.multiplicacion(2, 6);
  double resultadoDivision = calculadora.division(8, 1);

  print('Suma: $resultadoSuma');
  print('Resta: $resultadoResta');
  print('Multiplicación: $resultadoMultiplicacion');
  print('División: $resultadoDivision');
}
