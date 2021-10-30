
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SizeOfFeet extends StatelessWidget {
SizeOfFeet({Key? key, required this.txt}) : super(key: key);
   String txt;
 

  @override
  Widget build(BuildContext context) {
    return Text(txt,style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),);
  }
}