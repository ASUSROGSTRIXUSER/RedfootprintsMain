import 'package:login_minimalist/model/HighQualityClientModel.dart';
import 'package:flutter/cupertino.dart';

List<HighQualityClientModel> getHighQualityList() {
  List<HighQualityClientModel> highQualityList = new List<HighQualityClientModel>();
  HighQualityClientModel highQualityModel = new HighQualityClientModel();

  //1
  //specialityModel.noOfDoctors = 10;
  highQualityModel.highQualityname = "Reyes Santos Pau Melanie";
  highQualityModel.imgAssetPath = "lib/assets/Pau.PNG";
  highQualityModel.backgroundColor = Color(0xffFBB97C);
  highQualityList.add(highQualityModel);

  highQualityModel = new HighQualityClientModel();

  //2
//  specialityModel.noOfDoctors = 17;
  highQualityModel.highQualityname = "Willie Revillame";
  highQualityModel.imgAssetPath = "lib/assets/will.png";
  highQualityModel.backgroundColor = Color(0xffF69383);
  highQualityList.add(highQualityModel);

  highQualityModel = new HighQualityClientModel();

  //3
//  specialityModel.noOfDoctors = 27;
  highQualityModel.highQualityname = "Sue Ramirez";
  highQualityModel.imgAssetPath = "lib/assets/sue.jpg";
  highQualityModel.backgroundColor = Color(0xffEACBCB);
  highQualityList.add(highQualityModel);

  highQualityModel = new HighQualityClientModel();

  return highQualityList;
}
