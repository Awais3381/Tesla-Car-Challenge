import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tesla_carapp/chart_screen.dart';
import 'package:tesla_carapp/dialog.dart';
import 'package:tesla_carapp/graph.dart';
import 'package:tesla_carapp/home_screen.dart';
import 'package:tesla_carapp/profile.dart';
import 'package:tesla_carapp/setting.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;

  navigateTo(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  Widget _BottomAppBarIcon({required int index,required IconData icon}){
    return IconButton(
      onPressed: (){
        navigateTo(index);
      },
      icon: Icon(icon,color: selectedIndex == index? Colors.blue : Colors.white30),
      iconSize: 35,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SafeArea(
          child: Container(
            height: 70,
            color: Color(0xff25252b),
            child: Material(
              type: MaterialType.transparency,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _BottomAppBarIcon(index : 0, icon: Icons.home),
                  _BottomAppBarIcon(index : 1, icon: Icons.bar_chart),
                  SizedBox(
                    height: 80,
                    width: 50,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          bottom:40,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                            ),
                            child: IconButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExitConfirmationDialog()));
                            }, icon: Icon(Icons.power_settings_new),color: Colors.white,iconSize: 35,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _BottomAppBarIcon(index: 2, icon: Icons.build_rounded),
                  _BottomAppBarIcon(index: 3, icon: Icons.account_circle_rounded)
                ],
              ),
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          HomeScreen(),

          Graph(),

          Setting(),

          Profile()
        ],
      ),
    );
  }
}