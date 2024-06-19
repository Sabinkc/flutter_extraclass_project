import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/project.dart';
import 'package:my_app/screens/profile.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
              ));
        }),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Exit",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.people))
        ],
        title: Text(
          "DashBoard Screen",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.purple),
                accountName: Text("Sabin"),
                accountEmail: Text("sabinkc1206@gmail.com"),
                currentAccountPicture: Image.network(
                    "https://media.istockphoto.com/id/1374221694/photo/fulari-gumba-from-drone-point-of-view-nepal.jpg?s=1024x1024&w=is&k=20&c=p9B1WaQRD6QgA9799WN2XkhyK9nmCvafjCo_P8pEw3A="),
                otherAccountsPictures: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ],
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_back_ios),
                  title: Text("Home"),
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) {
                      return ProfileScreen();
                    }));
                  },
                ),
              ),
              Card(
                child: ExpansionTile(
                  leading: Icon(Icons.settings),
                  // trailing: Icon(Icons.arrow_back_ios),
                  title: Text("Settings"),
                  subtitle: Text("Go to settings page"),
                  children: [
                    Container(
                      color: Colors.red,
                      height: 1000,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(child: Text("Hello")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => Project()));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
