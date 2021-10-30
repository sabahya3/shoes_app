import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoes_app/screens/add_to_chart.dart';
import 'package:shoes_app/screens/home_page.dart';
import 'package:shoes_app/screens/pay.dart';
import 'package:shoes_app/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static int pageIndex=0;
  List pages=[const HomeView(),AddToChart(index: pageIndex,),const Pay(),const Settings()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(currentIndex: pageIndex,onTap: (int index){
        setState(() {
          pageIndex=index;
        });
      },elevation: 0,items:const [
        BottomNavigationBarItem(icon:   Icon(Icons.home_outlined,color: Colors.black,),label: "home",),
        BottomNavigationBarItem(icon:   Icon(Icons.shopping_cart_outlined,color: Colors.black,),label: "home",),
        BottomNavigationBarItem(icon:   FaIcon(FontAwesomeIcons.user,color: Colors.black,),label: "home",),
        BottomNavigationBarItem(icon:   FaIcon(FontAwesomeIcons.ellipsisH,color: Colors.black,),label: "home",)
      ],),
    );
  }
}
