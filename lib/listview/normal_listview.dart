import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NormalListView extends StatelessWidget {
  const NormalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Row + singlechildscrollview(scroll direction:Axis.horizontal)
      // Column + singlechildScrolllview(scroll direction: Axis.vertical)
      children: List.generate(
          100,
          (index) => Card(
                child: Container(
                  child: Text("Container ${index + 1}"),
                  color: Colors.blue,
                  height: 100,
                  width: 250,
                ),
              )),
    );
  }
}
