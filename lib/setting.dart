import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1c1e22),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 8,right: 8,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 20,),
                    SizedBox(width: 10,),
                    Text('Diagnostics',style: TextStyle(fontSize: 20,color: Colors.white38),),
                  ],
                ),
                Text('Model X',style: TextStyle(fontSize: 15,color: Colors.white),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
                height: 630,
              width: 360,
              decoration: BoxDecoration(
                  color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Overall Health',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        Container(
                          height: 34,
                          width:40,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.refresh,color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          height: 310,
                          width: 400,
                          child: Image.asset("images/car3.png",
                            height: MediaQuery.of(context).size.width,
                            width: MediaQuery.of(context).size.height,)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Battery Health',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 8,
                        ),
                        LinearPercentIndicator(
                          width: 320,
                          animation: true,
                          lineHeight: 18.0,
                          animationDuration: 2000,
                          percent: 0.9,
                          center: Text("95%",style: TextStyle(color: Colors.white),),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.blue.withOpacity(0.8),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Sensors",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                       
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 60,
                          height: 120,
                          color: Colors.white.withOpacity(0.8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      end: Alignment.topCenter,
                                      begin: Alignment.bottomCenter,
                                      colors: [Colors.blue,Colors.white])
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 60,
                          height: 120,
                          color: Colors.white.withOpacity(0.8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 70,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        end: Alignment.topCenter,
                                        begin: Alignment.bottomCenter,
                                        colors: [Colors.blue,Colors.white])
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 60,
                          height: 120,
                          color: Colors.white.withOpacity(0.8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 110,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        end: Alignment.topCenter,
                                        begin: Alignment.bottomCenter,
                                        colors: [Colors.blue,Colors.white])
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 60,
                          height: 120,
                          color: Colors.white.withOpacity(0.8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 90,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        end: Alignment.topCenter,
                                        begin: Alignment.bottomCenter,
                                        colors: [Colors.blue,Colors.white])
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                  height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Motors",style: TextStyle(color: Colors.white),),
                      Text("Camera",style: TextStyle(color: Colors.white),),
                      Text('Radars',style: TextStyle(color: Colors.white),),
                      Text('Sonars',style: TextStyle(color: Colors.white),),
                    ],
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}