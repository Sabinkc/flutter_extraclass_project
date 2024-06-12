import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                child: ExpansionTile(
                  leading: Icon(Icons.home),
                  // trailing: Icon(Icons.arrow_back_ios),
                  title: Text("Home"),
                  subtitle: Text("Go to home page"),
                  children: [
                    Container(
                      color: Colors.red,
                      height: 1000,
                    )
                  ],
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.settings),
                  trailing: Icon(Icons.arrow_back_ios),
                  title: Text("Settings"),
                ),
              ),
              // Divider(
              //   height: 1,
              // ),
              // ListTile(
              //   leading: Icon(Icons.settings),
              //   trailing: Icon(Icons.arrow_back_ios),
              //   title: Text("Settings"),
              // ),
              // Divider(
              //   height: 1,
              // ),
              // ListTile(
              //   leading: Icon(Icons.notifications),
              //   trailing: Icon(Icons.arrow_back_ios),
              //   title: Text("Notifications"),
              // ),
              // Divider(
              //   height: 1,
              // ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              transform: Matrix4.rotationZ(0.6),
              alignment: Alignment.center,
              child: Container(
                  child: Text("Hello"),
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: Colors.purple,
                    ),
                  )),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(10, -10),
                      blurRadius: 8,
                      spreadRadius: 5,
                      blurStyle: BlurStyle.normal,
                    ),
                    BoxShadow(
                      color: Colors.purple,
                      offset: Offset(-10, 10),
                      blurRadius: 8,
                      spreadRadius: 5,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(20, 50),
                      topRight: Radius.circular(20)),
                  border: Border.all(
                      width: 2,
                      color: Colors.purple,
                      style: BorderStyle.solid)),
            ),
          ],
        ),
      ),
    );
  }
}
