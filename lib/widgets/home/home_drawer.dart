import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff0f2625),

      child: ListView(
        children: [
          DrawerHeader(
      decoration: BoxDecoration(
      ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage('images/profile.jpg'),
                    radius: 50.0,
                  ),
                     SizedBox(height: 10,),
                  Text(
                    'Yeasin Arafat',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  
              ],
            )
           
          ),
       
          const DrawerContainer(
            buttonString: 'Book',
            routeName: '/book',
          ),
          const DrawerContainer(
            buttonString: 'Gadgets',
            routeName: '/gadgets',
          ),
          const DrawerContainer(
            buttonString: 'Cosmetics',
            routeName: '/cosmetics',
          ),
          const DrawerContainer(
            buttonString: 'Food',
            routeName: '/food',
          ),
          const DrawerContainer(
            buttonString: 'Sport',
            routeName: '/sports',
          ),
          const DrawerContainer(
            buttonString: 'Vehicle',
            routeName: '/vehicle',
          ),
          const DrawerContainer(
            buttonString: 'Fashion',
            routeName: '/fashion',
          ),
          const DrawerContainer(
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
    return GestureDetector(
      child: Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16.0),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white))),
        child: TextButton(
          style: TextButton.styleFrom(

              alignment: Alignment.centerLeft,
              fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),

          ),
          child: Text(
            buttonString.toString(),
            style: TextStyle(fontSize: 18, color: Colors.white),

          ),
          onPressed: () {
            if (routeName != null) {
              Navigator.of(context).pushNamed(routeName!);
            }
          },
        ),
      ),
      onTap: () {

      },
    );
  }
}
