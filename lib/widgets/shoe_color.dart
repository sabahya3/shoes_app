
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShoeColor extends StatelessWidget {
   ShoeColor({Key? key, required this.shoeColor}) : super(key: key);
  Color shoeColor;

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(bottom: 5),width: 35,height: 35,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color:shoeColor,));
  }
}