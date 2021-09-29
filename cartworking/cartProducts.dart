import 'logisticCart.dart';

List cart = [];

FunctionalityShopping functionality = FunctionalityShopping();

void main() {
  List inventory = [
    {
      "id": 1001,
      "name": "one Meat",
      "price": 100,
      "qty": 1,
    },
    {
      "id": 1002,
      "name": "two Meat",
      "price": 200,
      "qty": 1,
    },
    {
      "id": 1003,
      "name": "three Meat",
      "price": 300,
      "qty": 1,
    },
    {
      "id": 1004,
      "name": "Duhhh Meat",
      "price": 400,
      "qty": 1,
    },
    {
      "id": 1005,
      "name": "five Meat",
      "price": 500,
      "qty": 1,
    },
    {
      "id": 1006,
      "name": "six Meat",
      "price": 600,
      "qty": 4,
    }
  ];
  functionality.addCart(inventory[0]);
  functionality.addCart(inventory[1]);
  functionality.addCart(inventory[2]);
  functionality.addCart(inventory[3]);
  functionality.addCart(inventory[4]);
  functionality.addCart(inventory[5]);
  functionality.getQty();
  functionality.getFinalPrice();
  functionality.removeProduct(inventory[5]);
  functionality.getFinalPrice();
  functionality.getQty();
}
