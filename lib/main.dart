import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_game/Styles.dart';
import 'package:game_game/components/CustomMessage.dart';
import 'package:game_game/components/Items.dart';
import 'package:responsive/flex_widget.dart';
import 'package:responsive/responsive_row.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'components/Header.dart';
import 'components/NavBar.dart';

//import 'package:responsive/flex_widget.dart';
//import 'package:responsive/responsive_row.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
          title: 'The Better Way To Save and Invest Online - PiggyVest'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  bool changeWhite = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  AnimationController _imageController;
  Animation<double> _imageAnim;
  double topPadding = 0.0;

  @override
  void initState() {
    super.initState();

    _imageController = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 3000),
    );

    _imageAnim = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _imageController,
        curve: Interval(0.0, 1.0, curve: Curves.easeInOut)));

    _imageController.addListener(() {
      setState(() {});
    });

    _imageController.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _imageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: NavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ResponsiveBuilder(builder: (context, sizingInformation) {
            if (sizingInformation.isMobile || sizingInformation.isTablet) {
              return Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('images/piggy.png',
                            height: 50.0, width: 150.0),
                        IconButton(
                          onPressed: () {
                            scaffoldKey.currentState.openEndDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 32.0,
                            color: Color.fromRGBO(20, 68, 153, 1),
                          ),
                        ),
                      ]),
                ),
              );
            }

            return Header();
          }),
          ResponsiveBuilder(
            builder: (context, sz) => Container(
              height: size.height - 70.0,
              color: Colors.white,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 700.0,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: <Widget>[
                          sz.isDesktop
                              ? Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                    'images/woman-header-min.png',
                                    height: 708.0,
                                    fit: BoxFit.fitHeight,
                                  ))
                              : sz.isTablet
                                  ? Image.asset(
                                      'images/woman-header-min.png',
                                      height: 708.0,
                                      fit: BoxFit.fitHeight,
                                    )
                                  : Container(),
                          Padding(
                            padding: sz.isMobile
                                ? const EdgeInsets.only(left: 15)
                                : const EdgeInsets.only(left: 70),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: sz.isMobile
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'The Better Way',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: !sz.isMobile ? 50.0 : 30.0,
                                      color: Color(0xff083E9E),
                                      fontFamily: 'US',
                                      letterSpacing: -2),
                                ),
                                Text(
                                  'To Save & Invest',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: !sz.isMobile ? 50.0 : 30.0,
                                      color: Color(0xff083E9E),
                                      fontFamily: 'US',
                                      letterSpacing: -3),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      'PiggyVest helps you achieve financial freedom by enabling you save responsibly and \ninvest on the go.',
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                        'Earn 10% - 15.5% interests on savings.\nEarn over 25% return on investments.')),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: InkWell(
                                    onHover: (t) {
                                      print('on hover');
//                          setState(() {
//                            changeWhite = t;
//                          });
                                    },
                                    child: FlatButton(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0, horizontal: 40.0),
                                      onPressed: () {},
                                      hoverColor:
                                          Color.fromRGBO(255, 255, 255, 1),
                                      color: Color(0xff30c57b),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.0)),
                                        side: BorderSide(
                                          color: Color(0xff30c57b),
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Text(
                                        'Create a Free Account',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: sz.isMobile
                                                ? Colors.white
                                                : Color.fromRGBO(
                                                    20, 68, 153, 1)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 50.0),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: Image.asset(
                                          'images/iosbadge-101-image.png',
                                          width: 134.828,
                                          height: 40.0,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 4.0),
                                        child: Image.asset(
                                          'images/google.webp',
                                          width: 134.828,
                                          height: 40.0,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 188.0,
                      color: Color(0xfffbfbfb),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'images/security-login-400-min.png',
                            height: 100.0,
                            width: 100.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 30.0, top: 65.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Your Security is our Priority',
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        color: Color(0xff083E9E),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'PiggyVest uses the highest levels of Internet Security, and it is secured by 256 bits SSL \nsecurity encryption to ensure that your information is completely protected from fraud.',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    maxLines: 9,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Items(
                      image1: 'images/New-homepage-1.png',
                      image2: 'images/New-homepage-2.png',
                      image3: 'images/New-homepage-3.png',
                      subSubText1: 'Save smartly & responsibly!',
                      subSubText2:
                          'PiggyVest helps you reach your savings target much faster with various savings types.',
                      subSubText3:
                          'Plus you can even team up with others to reach joint goals.',
                      subText1:
                          '''Join over 100,000 users that use our quarterly savings feature called 'PiggyBank' to reach their general/personal savings goals more quickly.''',
                      subText2:
                          '''You have complete control on the type of investments you want to engage. All opportunities are pre-vetted by\nPiggyVest.''',
                      subText3:
                          '''Use our 'SafeLock' feature to lock funds away so you don't have access until your set date. You also earn over 13% p.a.''',
                      textHeader1: 'Co-invest\nin opportunities',
                      textHeader2: 'Reach\nmultiple targets',
                      textHeader3: 'Lock\nfunds away',
                    ),
                    Items(
                      image1: 'images/New-homepage-4.png',
                      image2: 'images/New-homepage-5.png',
                      image3: 'images/New-homepage-6.png',
                      subSubText1: 'Invest in bits & on the go!',
                      subSubText2:
                          'Many investments are expensive, which makes it hard to get started.',
                      subSubText3:
                          'At PiggyVest, you too can invest in tiny & affordable chunks and still enjoy the same return rates in amazing opportunities.',
                      subText1:
                          '''Join other PiggyVest users to co-invest in guaranteed fixedincome investments & other amazing projects.''',
                      subText2:
                          '''You have complete control on the type of investments you want to engage. All opportunities are pre-vetted by\nPiggyVest.''',
                      subText3:
                          '''Use our 'SafeLock' feature to lock funds away so you don't have access until your set date. You also earn over 13% p.a.''',
                      textHeader1: 'Co-invest\nin opportunities',
                      textHeader2: 'Decide\non what to invest',
                      textHeader3: 'Lock\nfunds away',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 80.0, right: 80.0, top: 30.0, bottom: 50.0),
                      child: Container(
                          child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(70.0),
                            child: Text('The saver of the month!',
                                style: saverMonth),
                          ),
                          ResponsiveRow(
                            columnsCount: 12,
                            children: <Widget>[
                              FlexWidget(
                                lg: 6,
                                xl: 6,
                                sm: 12,
                                md: 12,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 8.0 * _imageController.value,
                                      bottom:
                                          8.0 * (1 - _imageController.value)),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                    ),
                                    child: Container(
                                      width: 350.0,
                                      height: 250.0,
                                      child: Image.asset(
                                        'images/smallpic3bd61a3410.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              FlexWidget(
                                lg: 6,
                                xl: 6,
                                sm: 12,
                                md: 12,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Meet Adah & Kristie',
                                        style: saverMonth,
                                      ),
                                      Text(
                                          'Every month, we shine a spotlight on one saver, asking them questions about their\nsavings culture and how the product is specifically helping\nthem shape how they spend and save for future responsibilities.'),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20.0),
                                        child: InkWell(
                                          onHover: (t) {
                                            print('on hover');
//                          setState(() {
//                            changeWhite = t;
//                          });
                                          },
                                          child: FlatButton(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15.0,
                                                horizontal: 40.0),
                                            onPressed: () {},
                                            hoverColor: Color.fromRGBO(
                                                255, 255, 255, 1),
                                            color: Color(0xff30c57b),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4.0)),
                                              side: BorderSide(
                                                color: Color(0xff30c57b),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Text(
                                              'Meet Adah & Kristie',
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: sz.isMobile
                                                      ? Colors.white
                                                      : Color.fromRGBO(
                                                          20, 68, 153, 1)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                    ),
                    Container(
                      width: size.width,
                      color: Color(0xff083E9E),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CustomMessage(
                            left: true,
                            image: 'images/j.png',
                            text: 'dfkshjbfmbjwhbdjhb',
                            text2: 'dskjhvhjdbvb ahevhbsdBHJDB HHGEB HABS',
                            text3: 'FCSAD BJAMBHWAVBVSHSDBVH S',
                          ),
                          CustomMessage(
                            left: false,
                            image: 'images/c.png',
                            text3: 'ASDN B kdsvabhdsj',
                            text: ' dsb fabfaj,',
                            text2: ' bsbdjbd,bjfhd dbvjshbdhs bhjdb hd dsj',
                          ),
                          CustomMessage(
                            left: true,
                            image: 'images/j.png',
                            text: 'dfkshjbfmbjwhbdjhb',
                            text2: 'dskjhvhjdbvb ahevhbsdBHJDB HHGEB HABS',
                            text3: 'FCSAD BJAMBHWAVBVSHSDBVH S',
                          ),
                          CustomMessage(
                            left: false,
                            image: 'images/c.png',
                            text3: 'ASDN B kdsvabhdsj',
                            text: ' dsb fabfaj,',
                            text2: ' bsbdjbd,bjfhd dbvjshbdhs bhjdb hd dsj',
                          ),
                          CustomMessage(
                            left: true,
                            image: 'images/j.png',
                            text: 'dfkshjbfmbjwhbdjhb',
                            text2: 'dskjhvhjdbvb ahevhbsdBHJDB HHGEB HABS',
                            text3: 'FCSAD BJAMBHWAVBVSHSDBVH S',
                          ),
                          CustomMessage(
                            left: false,
                            image: 'images/c.png',
                            text3: 'ASDN B kdsvabhdsj',
                            text: ' dsb fabfaj,',
                            text2: ' bsbdjbd,bjfhd dbvjshbdhs bhjdb hd dsj',
                          ),
                          CustomMessage(
                            left: true,
                            image: 'images/j.png',
                            text: 'dfkshjbfmbjwhbdjhb',
                            text2: 'dskjhvhjdbvb ahevhbsdBHJDB HHGEB HABS',
                            text3: 'FCSAD BJAMBHWAVBVSHSDBVH S',
                          ),
                          CustomMessage(
                            left: false,
                            image: 'images/c.png',
                            text3: 'ASDN B kdsvabhdsj',
                            text: ' dsb fabfaj,',
                            text2: ' bsbdjbd,bjfhd dbvjshbdhs bhjdb hd dsj',
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 20.0),
                            child: InkWell(
                              onHover: (t) {
                                print('on hover');
//                          setState(() {
//                            changeWhite = t;
//                          });
                              },
                              child: FlatButton(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 40.0),
                                onPressed: () {},
                                hoverColor: Color.fromRGBO(255, 255, 255, 1),
                                color: Color(0xff30c57b),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  side: BorderSide(
                                    color: Color(0xff30c57b),
                                    width: 1.0,
                                  ),
                                ),
                                child: Text(
                                  'Read Amazing Stories',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: sz.isMobile
                                          ? Colors.white
                                          : Color.fromRGBO(20, 68, 153, 1)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
