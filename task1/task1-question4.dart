import 'dart:io';

void main() {

    print("Informe a primeira string\n");
    var string = stdin.readLineSync()!;
 
    var words = string.split(" ");

    var map = new Map<String, int>();

    for (var word in words) {
        if (map[word] != null) {
            map[word] = map[word]!.toInt() + 1;
        } else {
            map[word] = 1
        }
    }

    print(map);

}