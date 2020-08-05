import 'package:login_minimalist/model/ProspectsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
List<ProspectsModel> getProspectList() {
  List<ProspectsModel> prospectList = new List<ProspectsModel>();
  ProspectsModel prospectDataModel = new ProspectsModel();

  //1
  //specialityModel.noOfDoctors = 10;
  prospectDataModel.prospectname = "Reyes Santos Pau Melanie";
  prospectDataModel.imgAssetPath = "lib/assets/Pau.PNG";
  prospectDataModel.backgroundColor = Colors.deepPurple;
  prospectList.add(prospectDataModel);

  prospectDataModel = new ProspectsModel();

  //2
//  specialityModel.noOfDoctors = 17;
  prospectDataModel.prospectname = "Willie Revillame";
  prospectDataModel.imgAssetPath = "lib/assets/will.png";
  prospectDataModel.backgroundColor = Colors.deepPurple;
  prospectList.add(prospectDataModel);

  prospectDataModel = new ProspectsModel();

  //3
//  specialityModel.noOfDoctors = 27;
  prospectDataModel.prospectname = "Sue Ramirez";
  prospectDataModel.imgAssetPath = "lib/assets/sue.jpg";
  prospectDataModel.backgroundColor = Colors.deepPurple;
  prospectList.add(prospectDataModel);

  prospectDataModel = new ProspectsModel();

  return prospectList;
}
