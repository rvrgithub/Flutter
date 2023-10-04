import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import "package:flutter/material.dart";

class landPage extends StatefulWidget {
  const landPage({super.key});

  @override
  State<landPage> createState() => _landPageState();
}

class _landPageState extends State<landPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LAmd Page . . ."),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("accountName"),
                accountEmail: Text("accountEmail"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.shutterstock.com/shutterstock/photos/1153379377/display_1500/stock-photo-colorful-sweet-candy-for-background-colour-coated-chocolates-1153379377.jpg"),
                )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home, color: Colors.blue),
              onTap: () {
                Navigator.pushNamed(context, "/sign_page");
              },
            ),
            ListTile(
                title: Text("Notification"),
                leading: Icon(Icons.notifications, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
