import "package:flutter/material.dart";

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
          accountName: Text("accountName"),
          accountEmail: Text("data"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.shutterstock.com/shutterstock/photos/2274412231/display_1500/stock-vector-many-rainbow-gradient-random-bright-soft-balls-background-colorful-balls-background-for-kids-zone-2274412231.jpg"),
          ),
          decoration: BoxDecoration(color: Color.fromARGB(255, 242, 154, 153)),
        ),
        ListTile(
          title: Text("Home"),
          leading: Icon(
            Icons.home_outlined,
          ),
          onTap: () => print("object"),
          trailing: Icon(Icons.favorite),
        ),
        ListTile(
          title: Text("Notification"),
          leading: Icon(Icons.notification_add),
          onTap: () {
            print('object');
          },
        ),
        ListTile(
            title: Text("Log out"),
            leading: Icon(
              Icons.logout,
            ),
            onTap: () {
              print('object');
            })
      ]),
    );
  }
}
