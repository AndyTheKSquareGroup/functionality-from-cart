class FunctionalityShopping {
  var productsList = [];
  addCart(product) {
    var index =
        productsList.indexWhere((element) => element["id"] == product["id"]);
    index != -1 ? productsList[index]["qty"]++ : productsList.add(product);
    print("${product["name"]} added successfully");
  }

  removeProduct(product) {
    var index =
        productsList.indexWhere((element) => element["id"] == product["id"]);
    var nameProduct = productsList[index]["name"];
    if (index != 1) {
      if (productsList[index]["qty"] > -1) {
        productsList[index]["qty"]--;
        print(
            "${nameProduct} removed, now there are/is ${productsList[index]["qty"]} $nameProduct the inventory");
      } else {
        productsList.removeAt(index);
        print("There is nothing $nameProduct");
      }
    } else {
      print("Product doesn't exist");
    }
  }

  getQty() {
    num totalQty = 0;
    int lengList = productsList.length;

    for (int i = 0; i < lengList; i++) {
      totalQty += productsList[i]["qty"];
    }
    return print("totalqty = $totalQty products in your cart");
  }

  getFinalPrice() {
    num finalPrice = 0;
    int lengList = productsList.length;
    for (int i = 0; i < lengList; i++) {
      finalPrice += productsList[i]["qty"] * productsList[i]["price"];
    }
    return print("Total prince is: \$$finalPrice dollars");
  }
}
