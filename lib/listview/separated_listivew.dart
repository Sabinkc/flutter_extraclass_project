import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SeparatedListview extends StatelessWidget {
  SeparatedListview({super.key});
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: scrollController,
      trackVisibility: true,
      thumbVisibility: true,
      thumbColor: Colors.red,
      trackColor: Colors.black,
      thickness: 10,
      minThumbLength: 100,
      radius: Radius.circular(20),
      trackRadius: Radius.circular(50),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemBuilder: ((context, index) => Container(
                color: Colors.blue,
                height: 100,
                width: 200,
                child: Text("Container ${index + 1}"),
              )),
          separatorBuilder: ((context, index) => VerticalDivider(
                color: Colors.red,
                endIndent: 20,
                indent: 20,
                thickness: 3,
              )),
          itemCount: 100),
    );
  }
}
