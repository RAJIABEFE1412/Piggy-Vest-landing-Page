import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_game/Styles.dart';
import 'package:responsive/flex_widget.dart';
import 'package:responsive/responsive_row.dart';

class Items extends StatelessWidget {
  final image1,image2,image3,textHeader1,textHeader2,textHeader3,subText1,subText2,subText3,subSubText1,subSubText2,subSubText3;

  Items({this.image1,this.image2,this.image3,this.textHeader1, this.textHeader2, this.textHeader3,this.subText1,this.subText2,this.subText3,this.subSubText1,this.subSubText2,this.subSubText3});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, right: 10.0, top: 40.0, bottom: 40.0),
      child: Container(

        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                subSubText1,
                style: subTextStyle,
              ),
              margin: EdgeInsets.only(bottom: 5.0, top: 50.0),
            ),
            Text(
                subSubText2),
            Text(
                subSubText3),
            SizedBox(height: 50.0),
            ResponsiveRow(
              columnsCount: 12,
              children: <Widget>[
                FlexWidget(
                  xl: 6,
                  lg: 12,
                  md: 12,
                  sm: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xff083E9E),
                              width: 0.4),
                          borderRadius: BorderRadius.all(
                              Radius.circular(6.0))),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            image1,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(height: 50.0),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                textHeader1,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                    color: Color(0xff083E9E)),
                              )),
                          SizedBox(height: 10.0),
                          Text(
                              subText1),
                        ],
                      ),
                    ),
                  ),
                ),
                FlexWidget(
                  xl: 6,
                  lg: 12,
                  md: 12,
                  sm: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xff083E9E),
                              width: 0.4),
                          borderRadius: BorderRadius.all(
                              Radius.circular(6.0))),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            image2,
                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(height: 50.0),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                textHeader2,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                    color: Color(0xff083E9E)),
                              )),
                          SizedBox(height: 10.0),
                          Text(
                              subText2),
                        ],
                      ),
                    ),
                  ),
                ),
                FlexWidget(
                  xl: 6,
                  lg: 12,
                  md: 12,
                  sm: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xff083E9E),
                              width: 0.4),
                          borderRadius: BorderRadius.all(
                              Radius.circular(6.0))),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            image3,

                            fit: BoxFit.fitWidth,
                          ),
                          SizedBox(height: 50.0),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                textHeader3,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.0,
                                    color: Color(0xff083E9E)),
                              )),
                          SizedBox(height: 10.0),
                          Text(
                              subText3),
                        ],
                      ),
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
