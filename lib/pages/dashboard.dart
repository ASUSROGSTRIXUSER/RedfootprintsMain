import 'package:flutter/material.dart';
import 'package:login_minimalist/data/HighQualityClientsData.dart';
import 'package:login_minimalist/model/HighQualityClientModel.dart';
import 'package:login_minimalist/model/ProspectsModel.dart';
import 'package:login_minimalist/data/ProspectData.dart';
import 'package:login_minimalist/pages/ProspectMember.dart';
import 'package:login_minimalist/widget/DashboardWidgets/Chat.dart';
import 'package:login_minimalist/widget/DashboardWidgets/HighQualityClientTiles.dart';
import 'package:flutter/services.dart';
import 'package:login_minimalist/widget/DashboardWidgets/PerformanceChart.dart';
import 'package:login_minimalist/widget/DashboardWidgets/ProspectsTiles.dart';

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
          children: [
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xFF1b262c),
              ),
              accountName: new Text('Gilmar321'),
              accountEmail: new Text('gilmar903@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage("lib/assets/profpic.PNG"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket, color: Colors.white),
              title: Text(
                "Contact",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading:
                  Icon(Icons.transfer_within_a_station, color: Colors.white),
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
                    MaterialPageRoute(builder: (context) =>  ChatScreen()));
              
              },
            ),
            ListTile(
              leading: Icon(
                Icons.lightbulb_outline,
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
              leading: Icon(Icons.vpn_key, color: Colors.white),
              title: Text(
                'Settings',
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
          ],
        ),
      ) // Populate the Drawer in the next step.
          ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFF1b262c),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                "Prospects\n to Follow up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
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
                    color: Colors.white,
                    fontSize: 30,
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
