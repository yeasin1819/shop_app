import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _productList = [
    Product(
        productId: '022',
        name: 'Ipad Pro 11',
        price: 800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1542751110-97427bbecf20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1084&q=80',
        productDetails: 'Best Tablet'),
    Product(
        productId: '023',
        name: 'Ipad 9th Gen',
        price: 300.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1533310266094-8898a03807dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Tablet'),
    Product(
        productId: '024',
        name: 'Ipad 8th Gen',
        price: 270.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1557825835-b4527f242af7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
        productDetails: 'Best Tablet'),
    Product(
        productId: '025',
        name: 'iPhone 11 Pro ',
        price: 600.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1574763546929-db0ab5c5e4b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
        productDetails: 'Best Phone'),
    Product(
        productId: '026',
        name: 'Amazon Echo Dot',
        price: 150.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Amazon',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1568910748155-01ca989dbdd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Smart Audio Device'),
    Product(
        productId: '027',
        name: 'Dell XPS',
        price: 1800.0,
        discount: 120.0,
        categoryName: 'gadgets',
        subCategoryName: 'PC and Mac',
        brandName: 'Dell',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1595303526913-c7037797ebe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1229&q=80',
        productDetails: 'Best Laptop'),
    Product(
        productId: '028',
        name: 'iMac',
        price: 1800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'PC and Mac',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1547043848-d94c4ea5adc5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
        productDetails: 'Best All in on PC'),
    Product(
        productId: '029',
        name: 'Dell XPS 13',
        price: 800.0,
        discount: 10.0,
        categoryName: 'gadgets',
        subCategoryName: 'PC and Mac',
        brandName: 'Dell',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1595087873528-1fe582a3b302?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
        productDetails: 'Best Laptop'),
    Product(
        productId: '030',
        name: 'MacBook Pro',
        price: 1800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'PC and Mac',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1595066349400-7ebe04391d26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Best Laptop'),
    Product(
        productId: '031',
        name: 'HomePod Mini',
        price: 350.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1529359744902-86b2ab9edaea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Smart Audio Device'),
    Product(
        productId: '032',
        name: 'Google Home',
        price: 350.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'smart device',
        brandName: 'Google',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1530546171585-cc042ea5d7ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=936&q=80',
        productDetails: 'Smart Audio Device'),
    Product(
        productId: '033',
        name: 'iPhone 12 Pro max',
        price: 800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1598061403733-a0d8eb6bd569?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        productDetails: 'Best Phone'),
    Product(
        productId: '034',
        name: 'iPhone SE 2020',
        price: 400.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1606293459339-aa5d34a7b0e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
        productDetails: 'Best Phone'),
    Product(
        productId: '035',
        name: 'iPhone 7',
        price: 400.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1604548530945-fbdce3e76bc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
        productDetails: 'Best Phone'),
    Product(
        productId: '036',
        name: 'Pixel 3',
        price: 500.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Google',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1588858865445-03381e156752?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
        productDetails: 'Best Phone'),
    Product(
        productId: '037',
        name: 'Ipod',
        price: 300.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1511367734837-f2956f0d8020?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1105&q=80',
        productDetails: 'Best Walkman'),
    Product(
        productId: '038',
        name: 'JBL 3',
        price: 250.0,
        discount: 0.0,
        categoryName: 'gadgets',
        subCategoryName: 'audio device',
        brandName: 'JBL',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        productDetails: 'Best Sounding Headsets'),
    Product(
        productId: '022',
        name: 'Ipad Pro 11',
        price: 800.0,
        discount: 20.0,
        categoryName: 'gadgets',
        subCategoryName: 'phones and tabs',
        brandName: 'Apple',
        warrenty: '2 years',
        imageUrl:
            'https://images.unsplash.com/photo-1542751110-97427bbecf20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1084&q=80',
        productDetails: 'Best Tablet'),
  ];
  int _crossAxisCount = 2;
  double _expandedHeight = 280;
  double _imageHeight = 160;
  int get crossAxisCounts => _crossAxisCount;
  double get expandedHeight => _expandedHeight;
  double get imageHeight => _imageHeight;
  set setAxis(int data) {
    _crossAxisCount = data;
    notifyListeners();
  }

  set setexpandedHeight(double data) {
    _expandedHeight = data;
    notifyListeners();
  }

  set setImageHeight(double data) {
    _imageHeight = data;
    notifyListeners();
  }

  List<Product> get products => _productList;
}
