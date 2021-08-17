import dart.io;
import dart.math;

void main() {
    double a, b, c, delta;

    print("Calculando delata");
    print("Qual o valor de A");
    a = double.parse(stdin.readLineSync()!);

    print("Qual o valor de B");
    b = double.parse(stdin.readLineSync()!);

    print("Qual o valor de C");
    c = double.parse(stdin.readLineSync()!);

    delta = getDelta(a, b, c);
    print("O valor de delta é: $delta");

    print("Calculando raízes");

    if (delta > 0) {
        getSquares(a, b, c);
        return
    }

    print("Não existem raízes pois Delta é menor que zero!");

}

double getDelta(double a, double b, double c) {
    return pow(b, 2) - (4 * a * c);
}

void getSquares(double a, double b, double delta) {
    print("x1 =  ${(-b + sqrt(delta)) / (2 * a)}");
    print("x2 = ${(-b - sqrt(delta)) / (2 * a)}");
}