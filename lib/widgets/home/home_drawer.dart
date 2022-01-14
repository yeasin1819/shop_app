import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 150,
            color: Colors.orange,
          ),
          DrawerContainer(
            buttonString: 'Book',
            routeName: '/book',
          ),
          DrawerContainer(
            buttonString: 'Gadgets',
            routeName: '/gadgets',
          ),
          DrawerContainer(
            buttonString: 'Cosmetics',
            routeName: '/cosmetics',
          ),
          DrawerContainer(
            buttonString: 'Food',
            routeName: '/food',
          ),
          DrawerContainer(
            buttonString: 'Sport',
            routeName: '/sports',
          ),
          DrawerContainer(
            buttonString: 'Vehicle',
            routeName: '/vehicle',
          ),
          DrawerContainer(
            buttonString: 'Fashion',
            routeName: '/fashion',
          ),
          DrawerContainer(
            buttonString: 'Firniture',
            routeName: '/firniture',
          ),
        ],
      ),
    );
  }
}

class DrawerContainer extends StatelessWidget {
  final String buttonString;
  final String? routeName;
  const DrawerContainer({Key? key, required this.buttonString, this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: TextButton(
        child: Text(buttonString.toString()),
        onPressed: () {
          if (routeName != null) {
            Navigator.of(context).pushNamed(routeName!);
          }
        },
      ),
    );
  }
}
