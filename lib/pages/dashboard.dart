import 'package:flutter/material.dart';
import 'package:login_minimalist/data/HighQualityClientsData.dart';
import 'package:login_minimalist/model/HighQualityClientModel.dart';
import 'package:login_minimalist/model/ProspectsModel.dart';
import 'package:login_minimalist/data/ProspectData.dart';
import 'package:login_minimalist/pages/login.page.dart';
import 'package:login_minimalist/widget/DashboardWidgets/Chat.dart';
import 'package:login_minimalist/widget/DashboardWidgets/HighQualityClientTiles.dart';
import 'package:flutter/services.dart';
import 'package:login_minimalist/widget/DashboardWidgets/PerformanceChart.dart';
import 'package:login_minimalist/widget/DashboardWidgets/ProspectsTiles.dart';
import 'package:login_minimalist/pages/Settings_page.dart';

import 'calls.dart';

//String selectedCategorie = "Adults";

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<ProspectsModel> prospectsList;
  List<HighQualityClientModel> highQualityList;
  @override
  void initState() {
    prospectsList = getProspectList();
    highQualityList = getHighQualityList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black87,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              accountName: new Text('Gilmar321'),
              accountEmail: new Text('gilmar903@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage("lib/assets/profpic.PNG"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.contacts, color: Colors.white),
              title: Text(
                "Contact",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Calls('Contacts')));
              },
            ),
            ListTile(
              leading: Icon(Icons.wc, color: Colors.white),
              title: Text(
                'Prospect',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
            ),
            ListTile(
              leading: Icon(Icons.chat, color: Colors.white),
              title: Text(
                'Chat',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
              title: Text(
                'Notification',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(
                Icons.assessment,
                color: Colors.white,
              ),
              title: Text(
                'Trainings',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              //  backgroundColor: Colors.blue[700],
              title: Text(
                'Settings',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
              /*   children: <Widget>[
                ListTile(
                  leading: Icon(Icons.vpn_lock, color: Colors.white),
                  title: Text(
                    'Change Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Icon(Icons.mobile_screen_share, color: Colors.white),
                  title: Text(
                    'Logout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],*/
            ),
          ],
        ),
      ) // Populate the Drawer in the next step.
          ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                'Prospects to Follow up',
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 210,
                child: ListView.builder(
                    itemCount: prospectsList.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProspectsTilesWidget(
                        imgAssetPath: prospectsList[index].imgAssetPath,
                        prospectName: prospectsList[index].prospectname,
                        backColor: prospectsList[index].backgroundColor,
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "High Quality Client",
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                child: ListView.builder(
                    itemCount: highQualityList.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return HighQualityClientWidgetTiles(
                        imgAssetPath: highQualityList[index].imgAssetPath,
                        highQualityname: highQualityList[index].highQualityname,
                        backColor: highQualityList[index].backgroundColor,
                      );
                    }),
              ),
              SizedBox(
                height: 50,
              ),
              PerformanceChart()
            ],
          ),
        ),
      ),
    );
  }
}
