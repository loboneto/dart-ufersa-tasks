
import 'dart:io';

void main() {
    
    int row = 3;
    int col = 3;

    var array = List.generate(row, (i) => 
        List.filled(col, 0, growable: true), growable: false);

    for (int i = 0; i < row; i++) {
        for (int j = 0; j < col; j++) {
            print("Informe o valor pra linha $i da coluna $j!\n");
            array[i][j] = int.parse(stdin.readLineSync()!);
        }
    }

  print(array);

}