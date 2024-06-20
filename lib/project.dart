import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Project"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 300,
                color: Colors.red,
              ),
              Container(
                height: 200,
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/498240659/photo/two-nepali-women-spinning-a-wool-in-bhaktapur-nepal.jpg?s=1024x1024&w=is&k=20&c=E0sIB_gHJVJc2Tq1OWTm7dO3JeUmwfYwvgpdTYLskDI="))),
              ),
              SizedBox(
                height: 325,
              ),
              Positioned(
                  bottom: 0,
                  left: screenWidth / 2 - 25,
                  child: FloatingActionButton(
                    backgroundColor: Colors.yellow,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  )),
            ],
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  20,
                  (index) => Card(
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.red,
                          child: Text("List ${index + 1}"),
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
