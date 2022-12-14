
import 'package:flutter/material.dart';

import 'containerWidget.dart';

class CheckList extends StatefulWidget {
  String title;
  CheckList(this.title);


  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      ContainerWidget(radius: 15, color:isChecked?Theme.of(context).cardColor: Theme.of(context).scaffoldBackgroundColor, padding: const EdgeInsets.all(10), border: true, width: double.infinity, height: 60, child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(widget.title,style: Theme.of(context).textTheme.headline3,),
      Checkbox(
        checkColor: Colors.white,
        activeColor: Theme.of(context).focusColor,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),


      ],
    ))
      ],
    );
  }
}
