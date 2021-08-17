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

    } else if (option == 2) {

    } else if (option == 3) {

    } else {
        print("Opcao invalida!");
        showMenu();
    }

    products.add(Product("Lobo", 1));
    products.add(Product("Arthur", 2));

    for (Product product in products) {
        print("Itens: ${product.name} /" + " valor: ${product.value}");
    }

    for (Product product in products) {
        print("Nome: ${product.name} /" + " valor: ${product.value}");
    }
}

void showMenu() {
    print("Escolha uma das opcoes abaixo");
    print("1 - Cadastrar produto");
    print("2 - Excluir produto");
    print("3 - Listar produtos");
}

void addProduct(List<Product> products, Product newProduct) {
    for (Product product in products) {
        if (product.name == newProduct.name) {
            print("Produto já cadastrado!");
        } else {
            products.add(product);
        }
    }
}
