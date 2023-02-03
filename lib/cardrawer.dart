import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla_carapp/drawer_link_widget.dart';

class HomDrawer extends StatefulWidget {
  const HomDrawer({Key? key}) : super(key: key);

  @override
  State<HomDrawer> createState() => _HomDrawerState();
}

class _HomDrawerState extends State<HomDrawer> {
  @override
  Widget build(BuildContext context) {
    Widget YesButton=TextButton(onPressed: (){
    //  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SignIn()), (Route<dynamic> route) => false);
    }, child: Text('Yes',style: TextStyle(color: Colors.black),));
    Widget NoButton=TextButton(onPressed: (){

      Navigator.of(context).pop();
    }, child: Text('No',style: TextStyle(color: Colors.black),));
    AlertDialog alertDialog = AlertDialog(
      title: Text('Fitness Center',style: TextStyle(color: Colors.red[700]),),
      content: Text('Are you sure want to logout?'),
      actions: [
        YesButton,
        NoButton
      ],
    );
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        backgroundColor: Color(0xff1c1e22),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              child: Row(
                children: [
                  Text("Welcome to Tesla Model X",style: TextStyle(color: Colors.white,fontSize: 18),),
                  SizedBox(width: 15),
                  Container(
                      height: 20,
                      width: 40,
                      child: Image.asset("images/car2.png",
                        height: MediaQuery.of(context).size.width,
                        width: MediaQuery.of(context).size.height,)),
                ],
              ),
            ),
            Divider(
              color: Colors.white.withOpacity(0.6),
            ),
            DrawerLinkWidget(
              icon: Icons.assignment_outlined,
              text: "Home"
            ),
            DrawerLinkWidget(
              icon: Icons.folder_special_outlined,
              text: "Services",
            ),
            DrawerLinkWidget(
              icon: Icons.access_time_sharp,
              text: "Charging Hours",
            ),
            DrawerLinkWidget(
              icon: Icons.notifications_none_outlined,
              text: "Notifications",

            ),
            ListTile(
              dense: true,
              title: Text(
                "Application preferences",style: TextStyle(color: Colors.blue.withOpacity(0.8)),
              ),
            ),
            DrawerLinkWidget(
              icon: Icons.person_outline,
              text: "Account",
            ),
            DrawerLinkWidget(
              icon: Icons.settings_outlined,
              text: "Settings",

            ),
            DrawerLinkWidget(
              icon: Icons.translate_outlined,
              text: "Languages",

            ),

            ListTile(
              dense: true,
              title: Text(
                "Help & Privacy",style: TextStyle(color: Colors.blue.withOpacity(0.8))
              ),
            ),
            DrawerLinkWidget(
              icon: Icons.help_outline,
              text: "Help & FAQ",
            ),

            DrawerLinkWidget(
              icon: Icons.logout,
              text: "Logout",
            )
          ],
        ),
      ),
    );
  }
}