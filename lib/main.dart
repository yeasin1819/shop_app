import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/auth_provider.dart';
import 'package:shop_app/models/book/book_list.dart';
import 'package:shop_app/models/cosmetics/cosmetics_list.dart';
import 'package:shop_app/models/fashion/fashion_list.dart';
import 'package:shop_app/models/firniture/firniture_list.dart';
import 'package:shop_app/models/food/food_list.dart';
import 'package:shop_app/models/gadgets/gadgets_list.dart';
import 'package:shop_app/models/product_list.dart';
import 'package:shop_app/models/sports/sport_list.dart';
import 'package:shop_app/models/vehicle/vehicle_list.dart';
import 'package:shop_app/screens/book.dart';
import 'package:shop_app/screens/cosmetics.dart';
import 'package:shop_app/screens/fashion.dart';
import 'package:shop_app/screens/firniture.dart';
import 'package:shop_app/screens/food.dart';
import 'package:shop_app/screens/gadgets.dart';
import 'package:shop_app/screens/sport.dart';
import 'package:shop_app/screens/vehicle.dart';

import 'package:shop_app/widgets/auth/signin.dart';
import 'package:shop_app/widgets/auth/signup.dart';
import 'package:shop_app/widgets/details/allDetails/book.dart';
import 'package:shop_app/widgets/details/allDetails/cosmetic.dart';
import 'package:shop_app/widgets/details/allDetails/fashion.dart';
import 'package:shop_app/widgets/details/allDetails/firniture.dart';
import 'package:shop_app/widgets/details/allDetails/food.dart';
import 'package:shop_app/widgets/details/allDetails/gadgets.dart';
import 'package:shop_app/widgets/details/allDetails/sport.dart';
import 'package:shop_app/widgets/details/allDetails/vehicle.dart';
import 'package:shop_app/widgets/details/details_main.dart';
import 'package:shop_app/widgets/home/home_main_page.dart';
import 'package:shop_app/widgets/productCart/cart.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(
        value: AuthProvider(),
      ),
      ChangeNotifierProvider.value(
        value: ProductProvider(),
      ),
      ChangeNotifierProvider.value(value: BookProvider()),
      ChangeNotifierProvider.value(value: CosmeticProvider()),
      ChangeNotifierProvider.value(value: FashionProvider()),
      ChangeNotifierProvider.value(value: FoodProvider()),
      ChangeNotifierProvider.value(value: FirnitureProvider()),
      ChangeNotifierProvider.value(value: GadgetsProvider()),
      ChangeNotifierProvider.value(value: SportProvider()),
      ChangeNotifierProvider.value(value: VehicleProvider())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => AuthSignIn(),
        //'/':(context) => HomePage(),
        '/home': (context) => HomePage(),
        '/product-details': (context) => const ProductDetailsPage(),
        '/product-details-book': (context) => const BookDetailsPage(),
        '/product-details-cosmetic': (context) => const CosmeticDetailsPage(),
        '/product-details-fashion': (context) => const FashionDetailsPage(),
        '/product-details-firniture': (context) => const FirnitureDetailsPage(),
        '/product-details-food': (context) => const FoodDetailsPage(),
        '/product-details-gadgets': (context) => const GadgetsDetailsPage(),
        '/product-details-sport': (context) => const SportDetailsPage(),
        '/product-details-vehicle': (context) => const VehicleDetailsPage(),
        '/my-cart': (context) => const MyCart(),
        '/sign-up': (context) => AuthSignUp(),
        '/sign-in': (context) => const AuthSignIn(),
        '/book': (context) => BookHomePage(),
        '/gadgets': (context) => GadgetsHomePage(),
        '/cosmetics': (context) => CosmeycisHomePage(),
        '/food': (context) => FoodHomePage(),
        '/sports': (context) => SportHomePage(),
        '/vehicle': (context) => VechileHomePage(),
        '/fashion': (context) => FashionHomePage(),
        '/firniture': (context) => FirnitureHomePage()
      },
    );
  }
}