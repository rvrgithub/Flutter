import 'package:flutter/material.dart';

class DrawerTest extends StatelessWidget {
  const DrawerTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text("Radhik@123.com"),
            accountName: Text("radhika"),
            currentAccountPicture: CircleAvatar(
              child: Image.network(
                  "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=1440"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home Page"),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Home Page"),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Home Page"),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Home Page"),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
        ],
      ),
    );
  }
}
