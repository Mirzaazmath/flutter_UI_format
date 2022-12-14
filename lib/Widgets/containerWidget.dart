import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
 double radius;
 Color color;
 EdgeInsetsGeometry padding;
 EdgeInsetsGeometry?margin;
 Widget child;
 double height;
 double width;
 bool border;
 ContainerWidget({required this.radius,required this.color,required this.child,required this.padding,required this.border,required this.width,required this.height,this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        border:border?Border.all(color: Theme.of(context).canvasColor,width: 2):null,
            borderRadius:BorderRadius.circular(radius)
      ),
      child: child,
    );
  }
}
