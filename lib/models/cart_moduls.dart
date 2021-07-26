import 'package:shop_app/models/product_moduls.dart';

class Cart {
  final Product product;
  final int itemNum;

  Cart({required this.product, required this.itemNum});
}

//demo data for our cart
List<Cart> demoCarts = [
  Cart(product: demoProducts[0], itemNum: 2),
  Cart(product: demoProducts[1], itemNum: 1),
  Cart(product: demoProducts[3], itemNum: 1)
];
