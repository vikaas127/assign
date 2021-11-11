import 'dart:async';
import 'package:assign/provder/store.dart';
import 'package:assign/view/Deshboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/my_colors.dart';
import 'data/img.dart';


void main() {
  runApp(  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => mystore()),
    ],
    child:
      MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme(headline1: TextStyle(fontSize: 20,color: Colors.white)),
          primaryColor: MyColors.primary,
          accentColor: MyColors.accent,
          primaryColorDark: MyColors.primaryDark,
          primaryColorLight: MyColors.primaryLight,
          bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent)
      ),
      home: SplashScreen(),
    /*  routes: <String, WidgetBuilder>{
        '/MenuRoute': (BuildContext context) => new MenuRoute(),
        '/About': (BuildContext context) => new AboutAppRoute(),
      }*/
  )));
}

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) =>
             // VerificationPhoneRoute()
          Dashboard()
      ),
    );
  //  Navigator.of(context).pushReplacementNamed(routeName);
  }

  @override
  void initState() {
    super.initState();
   // SQLiteDb dbHelper = SQLiteDb();
   // dbHelper.init();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(Img.get('Bg.png')),
    fit: BoxFit.cover,
    ),),
        child: Align(
          child: Container(
            width: 205,
            height: 280,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(   decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Img.get('logo2.png')),
                    fit: BoxFit.fitWidth,
                  ),),
                  width: 180, height: 100,
                  child:
                  Image.asset(
                        Img.get('logo1.png'),height: 80,width: 80,
                        color: Colors.white, ),

                ),
SizedBox(height: 40,),
                Container(child:
    Text("IMMONAA",style: TextStyle(letterSpacing:1.2,color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
                ),
              ],
            ),
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
