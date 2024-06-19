import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text(
            "Profile Screen",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: DecoratedBox(
          decoration: BoxDecoration(color: Colors.black),
          child: RawScrollbar(
            controller: _scrollController,
            trackVisibility: true,
            thumbVisibility: true,
            thumbColor: Colors.orange,
            trackColor: Colors.green,
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: Colors.red,
                    height: 200,
                    width: 500,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          color: Colors.white,
                          height: 100,
                          width: 200,
                        ),
                        Container(
                          color: Colors.blue,
                          height: 50,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    width: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 200,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 500,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
