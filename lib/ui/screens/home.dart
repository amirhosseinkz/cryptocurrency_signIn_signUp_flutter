import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptocurrency_signin_signup/ui/screens/login/sign_in.dart';
import 'package:cryptocurrency_signin_signup/ui/screens/login/sign_up.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;
  List<Widget> containers = [SignIn(),SignUp()];
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final  mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (Rect rect) => LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black , Colors.transparent],
            ).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/sample/bitcoin1.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              ),
            ),
              ),
        ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70 , bottom: 70, left: 15 , right: 15),
              child: TabBar(
                isScrollable: false,
                unselectedLabelStyle: TextStyle(fontSize: 15),
                  labelStyle:TextStyle(fontWeight: FontWeight.bold , fontSize: 18),
                  unselectedLabelColor: Colors.white60,
                  labelColor: Colors.yellow,
                  tabs: [
                    Tab(
                      text: 'SIGN IN',
                    ),
                    Tab(
                      text: 'SIGN UP',
                    ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
            Expanded(child: TabBarView(children: containers , controller: _tabController,)),
          ],
        ),
      )
      ]
          ); /* add child content here */
  }
}