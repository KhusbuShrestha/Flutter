import 'package:flutter/cupertino.dart';
import 'package:shipping_app/model/product.dart';

class ProductProvider extends ChangeNotifier {
  int _totalitems = 0;
  List<Product> _products = [];
  double _total = 0;

// method for adding the product
  void addProduct(Product product) {
    _products.add(product);
    _total = _total + product.sp;
    _totalitems++;
    notifyListeners();
  }

// method for removing the product

  void removeProduct(Product product) {
    _products.remove(product);
    _total = _total - product.sp;
    _totalitems--;
    notifyListeners();
  }

  int get totalItem {
    return _totalitems;
  }

  double get totalAmount {
    return _total;
  }

  List<Product> get products {
    return _products;
  }
}
