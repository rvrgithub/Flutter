import 'package:flutter/material.dart';

class Drawer_side extends StatefulWidget {
  const Drawer_side({super.key});

  @override
  State<Drawer_side> createState() => _Drawer_sideState();
}

class _Drawer_sideState extends State<Drawer_side> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
            accountName: Text("Radhika Verma"),
            accountEmail: Text("Radhika@123.com"),
            currentAccountPicture:
                CircleAvatar(backgroundImage: NetworkImage(""))),
        ListTile(
          title: Text("Home"),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.pushNamed(context, "/signup");
          },
        ),
        ListTile(
          title: Text("Products"),
          leading: Icon(Icons.home),
          onTap: () {
            Navigator.pushNamed(context, "/signup");
          },
        ),
        ListTile(
            title: Text("Product List"),
            leading: Icon(Icons.car_rental),
            onTap: () {
              Navigator.pushNamed(context, "/productList");
            }),
        ListTile(
          title: Text("Login"),
          onTap: () {
            Navigator.pushNamed(context, "/login");
          },
        ),
        ListTile(
          title: Text("Sign up"),
          onTap: () {
            Navigator.pushNamed(context, "/signup");
          },
        ),
      ]),
    );
  }
}
