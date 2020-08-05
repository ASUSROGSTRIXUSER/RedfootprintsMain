import 'package:flutter/material.dart';
import 'package:login_minimalist/pages/ProspectMember.dart';

class ProspectsTilesWidget extends StatelessWidget {
  final String imgAssetPath;
  final String prospectName;
  // final int noOfDoctors;
  final Color backColor;
  ProspectsTilesWidget(
      {@required this.imgAssetPath,
      @required this.prospectName,
      // @required this.noOfDoctors,
      @required this.backColor});

  @override
 Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProspectMember()));
        },
        child: Container(
          width: 150,
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(65),
            border: Border.all(color: Color(0xff827daa), width: 2),
            image: DecorationImage(
              image: AssetImage(imgAssetPath),
              fit: BoxFit.fitHeight,
            ),
            shape: BoxShape.rectangle,
          ),
        ));
  }
}

