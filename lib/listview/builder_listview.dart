import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuilderListView extends StatelessWidget {
  const BuilderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        
        itemBuilder: ((context, index) => Container(
              color: Colors.red,
              height: 100,
              width: 250,
              child: Text("Container ${index + 1}"),
            )));
  }
}
