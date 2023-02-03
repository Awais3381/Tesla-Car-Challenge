import 'package:flutter/material.dart';
import 'package:tesla_carapp/customcontainer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1c1e22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70,),
          Padding(
            padding: const EdgeInsets.only(left: 8,bottom: 8),
            child: Text('Offer Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(Icons.bluetooth, "Automatic",Colors.blue.shade100,Colors.blue.shade100,),
              CustomContainer(Icons.airline_seat_flat, "4 Seats",Colors.green.shade100,Colors.green.shade100,),
              CustomContainer(Icons.location_on, "6.4L",Colors.yellow.shade100,Colors.yellow.shade100,),
            ],
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 8,bottom: 8),
            child: Text('Specifications',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(Icons.electric_meter_outlined, "Milage 14.2",Colors.red.shade100,Colors.red.shade100,),
              CustomContainer(Icons.bolt, "3996 CC",Colors.purple.shade100,Colors.purple.shade100,),
              CustomContainer(Icons.badge, "BMP 700",Colors.grey.shade100,Colors.grey.shade100,),
            ],
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 8,bottom: 8),
            child: Text('Features',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(Icons.drive_eta, "Auto Pilot",Colors.orange.shade100,Colors.orange.shade100,),

              CustomContainer(Icons.usb, "USB Port",Colors.teal.shade100,Colors.teal.shade100,),

              CustomContainer(Icons.power_settings_new, "Keyless",Colors.greenAccent.shade100,Colors.greenAccent.shade100,),
            ],
          ),



        ],
      )
    );
  }
}