import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:shoes_app/data/product_data.dart';
import 'package:shoes_app/screens/add_to_chart.dart';



class HomeView extends StatelessWidget {
   const HomeView({Key? key}) : super(key: key);
  static int? current;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(70)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios),
                        iconSize: 25,
                        color: Colors.white,
                      )),
                  Container(
                      height: 40,
                      width: 40,

                      alignment: Alignment.center,
                      margin:const EdgeInsets.only(right: 10),
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
             const SizedBox(
                height: 20,
              ),
              SizedBox(

                width: MediaQuery.of(context).size.width-70,
                child: TextFormField(


                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide:const BorderSide(color: Colors.grey,width: 2)),
                      enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide:const BorderSide(color: Colors.grey,width: 2)) ,
                      hintText: "Search",
                      prefixIcon:const Icon(

                        Icons.search,
                        color: Colors.black,
                        size: 25,
                      )),
                ),
              ),
            const  SizedBox(height: 30,),
              TabBar(
                  padding:const EdgeInsets.only(left: 25,right: 25),unselectedLabelColor: Colors.grey,indicator: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(15)),tabs:const [
                Tab(text: "all",),
                Tab(text: "casual",),
                Tab(text: "sport",),
                Tab(text: "clasic",),

              ]),
            const  SizedBox(height: 20,),
              Expanded(child:  StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: Products.shoesList.length,
                itemBuilder: (BuildContext context, int index) => GestureDetector(
                  onTap: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>AddToChart(index: index,)));},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: PhysicalModel(borderRadius: BorderRadius.circular(15),color: Colors.white,
                    elevation: 6,
                    child: Padding(

                      padding:  EdgeInsets.only(top:index%2==0? 20:60,right: 15,left: 15),
                      child: Column(
                        children: [
                          PhysicalModel(borderRadius: BorderRadius.circular(15),elevation: 10,color: Colors.white,child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(Products.shoesList[index]),
                          )),
                      const    SizedBox(height: 15,),
                        const  Text("nike shoes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          SizedBox(height: index%2==0?15:40,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:const [Text("400 LE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),Text("⭐ 4.2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)],)
                        ],
                      ),
                    )),
                  ),
                ),
                staggeredTileBuilder: (int index) =>
                 StaggeredTile.count(2, index.isEven ? 2.7 : 3.4),
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 2.0,
              ))
            ],
          ),
        ),

      ),
    );
  }
}
