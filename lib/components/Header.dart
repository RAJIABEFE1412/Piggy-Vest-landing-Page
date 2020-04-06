import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'onHover.dart';
class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool createHeader = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 82.0, right: 120.0),
        child: Row(children: <Widget>[
          Image.asset("images/piggy.png",
              height: 60.0, width: 180.0),
          Expanded(child: SizedBox()),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  hoverColor: Colors.white,
                  onHover: (t) {},
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("About",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromRGBO(20, 68, 153, 1))),
                  ),
                ).showCursorOnHover,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onHover: (t) {},
                  child: FlatButton(
                    hoverColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Stories",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(20, 68, 153, 1)),
                    ),
                  ),
                ).showCursorOnHover,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  child: FlatButton(
                    hoverColor: Colors.white,
                    onPressed: () {},
                    child: Text("FAQ",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromRGBO(20, 68, 153, 1))),
                  ),
                ).showCursorOnHover,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  child: FlatButton(
                    hoverColor: Colors.white,
                    onPressed: () {},
                    child: Text("Blog",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromRGBO(20, 68, 153, 1))),
                  ),
                ).showCursorOnHover,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  child: FlatButton(
                    hoverColor: Colors.white,
                    onPressed: () {},
                    child: Text("Log In",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromRGBO(20, 68, 153, 1))),
                  ),
                ).showCursorOnHover,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(

                  child: FlatButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 30.0),
                    onPressed: () {},
                    hoverColor: Color.fromRGBO(20, 68, 153, 1),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(4.0)),
                      side: BorderSide(
                        color: Color.fromRGBO(20, 68, 153, 1),
                        width: 1.0,
                      ),
                    ),
                    child: Text(
                      "Create a Free Account",
                      style: TextStyle(
                          color: createHeader ? Colors.white :  Color.fromRGBO(20, 68, 153, 1)),
                    ),
                  ),
                ).onHoverMouse(a,b),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  void a(){
    setState((){
      createHeader= true;
    });
  }
  void b(){
    setState((){
      createHeader= false;
    });
  }
}
