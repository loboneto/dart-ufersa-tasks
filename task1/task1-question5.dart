import 'dart:io';

void main() {
    print("Informe a primeira string\n");
    var string1 = stdin.readLineSync()!;
 
    print("Informe a segunda string\n");
    var string2 = stdin.readLineSync()!;
    

    if (string1.lenght != string2.lenght) {
        return
    }
   
    string1.sort();
    string2.sort();

    var anagram = true;

    for (var i = 0; i < string1.lenght; i++) {
        if (string1[1] != string2[i]) {
            anagram = false 
        }
    }

    print("Anagrama: ${anagram}");
}