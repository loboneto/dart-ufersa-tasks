class Product {
    String name = "null";
    int value = 0;

    Product(this.name, this.value) {

    }
}

void main() {

    List<Product> products = [];

    showMenu();

    var option = integer.parse(stdin.readLineSync()!);

    if (option == 1) {
        print("Informe o nome do produto\n");
        var name = stdin.readLineSync()!;
        
        print("Informe o valor do produto\n");
        var value = double.parse(stdin.readLineSync()!);

        var newProduct = Product(name, value);
        products.add(newProduct);
        print("Produto adicionado com sucesso!\n");
    } else if (option == 2) {
        print("Escolha um produto para excluir\n");
        showProducts();
        var position = integer.parse(stdin.readLineSync()!);
        removeProduct(position);
    } else if (option == 3) {
        print("Escolha um produto para editar\n");
        showProducts();
        var position = integer.parse(stdin.readLineSync()!);
        print("Informe o nome do produto\n");
        var name = stdin.readLineSync()!;
        print("Informe o valor do produto\n");
        var value = double.parse(stdin.readLineSync()!);
        var newProduct = Product(name, value);
        updateProduct(position, newProduct);
    } else if (option == 4) {
        showProducts();
    } else {
        print("Opção inválida!\n");
        showMenu();
    }
}

void showMenu() {
    print("Escolha uma das opcoes abaixo");
    print("1 - Cadastrar produto\n");
    print("2 - Excluir produto\n");
    print("3 - Editar produtos\n");
    print("4 - Listar produtos\n");
}

void showProducts() {
    for (Product product in products) {
        print("${products.indexOf(product) + 1} - ${product.name} \n")
    }
}

void addProduct(Product newProduct) {
    for (Product product in products) {
        if (product.name == newProduct.name) {
            print("Produto já cadastrado!");
        } else {
            products.add(product);
        }
    }
}

void removeProduct(int position) {
    if (products.lenght < position) {
        print("Valor inválido");
    } else {
        products.removeAt(position);
    }
}

void updateProduct(int position, Product newProduct) {
    if (products.lenght < position) {
        print("Valor inválido");
    } else {
        products[position] = newProduct
    }
}
