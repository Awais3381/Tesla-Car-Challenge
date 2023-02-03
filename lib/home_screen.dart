import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tesla_carapp/cardrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c1e22),
        elevation: 0,

      ),

      drawer: HomDrawer(),
      body: Container(
        color: Color(0xff1c1e22),
        child: Column(
          children: [
            Text("Your Tesla",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(
              height: 10,
            ),
            Text("Model X",style: TextStyle(fontSize: 30,fontFamily: "Times New Roman",color: Colors.white),),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 200,
                width: 400,
                child: Image.asset("images/car2.png",
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.height,)),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 10.0,
                    animation: true,
                    percent: 0.90,
                    center: Text(
                      "95.0%",
                      style:
                      new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.blue,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.electrical_services_rounded,color: Colors.blue,),
                    Text(" Charging..  14 mins remaining",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 130,
                  color: Color(0xff25252b),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Temperature",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                        Text("Cabin",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 10,),
                        Stack(
                          children: [
                            Center(child: Text("21",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 35),)),
                            Padding(
                              padding: const EdgeInsets.only(left: 45),
                              child: Center(child: Text("C",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16),)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 130,
                  color: Color(0xff25252b),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Consumption",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                        Text("Today",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 10,),
                        Center(child: Text("4.3",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 35),)),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
