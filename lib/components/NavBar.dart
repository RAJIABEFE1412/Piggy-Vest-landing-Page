import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onHover.dart';
import '../Styles.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(20, 68, 153, 0.85),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () => Navigator.pop(context),

                icon: Icon(CupertinoIcons.clear,
                    size: 36.0, color: Colors.white)),
          ),

          InkWell(
            onTap: (){},
            child: Container( padding: pdDrawer,child: Text('About', style: txtStyleDrawer)),
          ).showCursorOnHover,

          InkWell(
            onTap: (){},
            child: Container( padding: pdDrawer,child: Text('Stories', style: txtStyleDrawer)),
          ).showCursorOnHover,
          InkWell(
            onTap: (){},
            child: Container( padding: pdDrawer,child: Text("FAQ", style: txtStyleDrawer)),
          ).showCursorOnHover,
          InkWell(
            onTap: (){},
            child: Container( padding: pdDrawer,child: Text("Blog", style: txtStyleDrawer)),
          ).showCursorOnHover,

          InkWell(
            onTap: (){},
            child: Container( padding:pdDrawer,child: Text("Log In", style: txtStyleDrawer)),
          ).showCursorOnHover,
          InkWell(
            onTap: (){},
            child: Container( padding: pdDrawer,child: Text("Create A Free Account", style: txtStyleDrawer)),
          ).showCursorOnHover,
        ],
      ),
    );
  }
}
