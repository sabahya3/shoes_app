import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoes_app/data/product_data.dart';
import 'package:shoes_app/widgets/shoe_color.dart';
import 'package:shoes_app/widgets/size_of_feet.dart';
// ignore: must_be_immutable
class AddToChart extends StatelessWidget {
  int ?index;
   AddToChart({Key? key,  this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.topRight,
                    margin:const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(70)),
                    child: IconButton(
                      onPressed: () {},
                      icon:const Icon(Icons.arrow_back_ios),
                      iconSize: 25,
                      color: Colors.white,
                    )),
                Container(
                    height: 40,
                    width: 40,

                    alignment: Alignment.center,
                    margin:const  EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(70)),
                    child: IconButton(
                      onPressed: () {},
                      icon:const Icon(Icons.notifications_sharp),
                      iconSize: 25,
                      color: Colors.white,
                    )),
              ],
            ),
           const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: PhysicalModel(
                color: Colors.white,
                elevation: 8,
                borderRadius: BorderRadius.circular(15),

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: PhysicalModel(borderRadius: BorderRadius.circular(15),elevation: 10,color: Colors.white,child: SizedBox(height: 120,width: 150,child: Image.asset(Products.shoesList[index!],fit: BoxFit.fill,)),),
                      ),
                     const SizedBox(height: 20,),
                      const Text("nike shoes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      const SizedBox(height: 20),
                      Row(mainAxisAlignment: MainAxisAlignment.center,children:const [Text("400 LE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                         SizedBox(width: 30,),
                         Text("⭐ 4.2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)],)
                    ],
                  ),
                ),
              ),
            ),
           const Text("select size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
           const SizedBox(height: 30,),
            DefaultTabController(length: 6, child: SizedBox(
              child: TabBar(unselectedLabelColor: Colors.grey,padding: const EdgeInsets.symmetric(horizontal: 30),indicator: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(25)),tabs: [
               SizeOfFeet(txt: "40",),
                 SizeOfFeet(txt: "41",),
                   SizeOfFeet(txt: "42",),
                     SizeOfFeet(txt: "43",),
                       SizeOfFeet(txt: "44",),
                         SizeOfFeet(txt: "45",),
          

              ],),

            )),const SizedBox(height: 5,),
            const Text("select color",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
            const SizedBox(height: 15,),
            DefaultTabController(length: 4, child: SizedBox(
              child: TabBar(unselectedLabelColor: Colors.grey,padding: const EdgeInsets.symmetric(horizontal: 30),indicatorColor:Colors.black,tabs: [
              ShoeColor(shoeColor: Colors.black,),
              ShoeColor(shoeColor: Colors.teal,),
              ShoeColor(shoeColor: Colors.pink.withOpacity(0.7),),
              ShoeColor(shoeColor: Colors.red,),

              ],),
            )),
            const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(color: Colors.black,width: 2)),child: IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.bookmark)),),
              Container(alignment: Alignment.center,width: 200,padding: const EdgeInsets.all(10),decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12),border: Border.all(color: Colors.black,width: 2)),child: const Text("add to cart",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),)),
            ],)
          ],
        ),
      ),
     

    );
  }
}



