import dart.io;
import dart.math;

void main() {
    double a, b, c, delta;

    print("--- Equação do segundo grau ---\n");
    print("Calculando delta\n");
    print("Informe o valor de A");
    a = double.parse(stdin.readLineSync()!);

    print("Informe o valor de B\n");
    b = double.parse(stdin.readLineSync()!);

    print("Informe o valor de C\n");
    c = double.parse(stdin.readLineSync()!);

    delta = getDelta(a, b, c);
    print("O valor de delta é: $delta");

    print("Calculando raízes");

    if (delta > 0) {
        getSquares(a, b, c);
        return
    }

    print("Delta menor que zero, não existem raízes!");

}

double getDelta(double a, double b, double c) {
    return pow(b, 2) - (4 * a * c);
}

void getSquares(double a, double b, double delta) {
    print("x1 =  ${(-b + sqrt(delta)) / (2 * a)}");
    print("x2 = ${(-b - sqrt(delta)) / (2 * a)}");
}