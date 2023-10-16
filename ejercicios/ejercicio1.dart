abstract class Operacion {
  double suma(double a, double b);
  double resta(double a, double b);
  double multiplicacion(double a, double b);
}

class Calculadora implements Operacion {
  @override
  double suma(double a, double b) {
    return a + b;
  }

  @override
  double resta(double a, double b) {
    return a - b;
  }

  @override
  double multiplicacion(double a, double b) {
    return a * b;
  }
}

void main() {
  final calculadora = Calculadora();

  double resultadoSuma = calculadora.suma(5, 3);
  double resultadoResta = calculadora.resta(10, 4);
  double resultadoMultiplicacion = calculadora.multiplicacion(2, 6);

  print('Suma: $resultadoSuma');
  print('Resta: $resultadoResta');
  print('Multiplicación: $resultadoMultiplicacion');
}
