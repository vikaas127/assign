import 'dart:convert';

import 'package:assign/data/img.dart';
import 'package:assign/data/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';



class Dashboard extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<Dashboard> {


  int _currentIndex = 0;
  PageController _pageController;
  final kSubtitleStyle = TextStyle(
      color: Colors.black,
      fontSize: 16.0,
      height: 1.2,
      fontFamily: "Product Sans"
  );
  final kTitleStyle = TextStyle(
      color: Colors.grey,
      fontSize: 16.0,

      height: 1.5,
      fontFamily: "Product Sans"
  );

  @override
  void initState() {
    super.initState();


    _pageController = PageController();







  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  final List<Widget> viewContainer = [

    //  Create(),
    //  Saved(),
    //  Favourite(),
    //  Xplore(),
  ];
  Widget appBarTitle = new Text("Sales Orders");
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      drawer: Drawer(),
appBar: AppBar(centerTitle: true,
  title:  Container(
  width: 200,
  height: 80,
  alignment: Alignment.center,
  child:  Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(Img.get('logo2.png')),
        fit: BoxFit.fitWidth,
      ),),
    width: 80, height: 50,
    child:
    Image.asset(
      Img.get('logo1.png'),height: 50,width: 50,
      color: Colors.white, ),

  ),
),),
      body: SizedBox.expand(
        child: PageView(
          physics:new NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[

            Home (),
            Photo(),
            Video(),
            videocal(),
            chat(),
          ],
        ),
      ),
      bottomSheet: BottomNavigationBar(unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        selectedItemColor: Color(0xff3d9978),
        backgroundColor:  Color(0xFF21223D),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.missed_video_call), title: Text('Video')),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_library_sharp), title: Text('Photo')),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_call), title: Text('Video call')),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat), title: Text('chat')),
        ],
        currentIndex: _currentIndex,
        // fixedColor: Color(0xff3d9978),
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
      ),
      bottomNavigationBar: Container(
        child: Row(children: [

        Expanded(flex: 4,
          child: Container(


            child:Card(shadowColor:Color(0xff26263d),color: Color(0xff26263d),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Img.get('profile.png')),
                            fit: BoxFit.fill,
                          ),),
                        width: 30, height: 30,


                      ),
                   SizedBox(width: 10,),
                    Expanded(flex: 3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
                            child: Text("Im fashion designer....7+ years of exper,ience in a luxury brand environment. 👗 👗👗",style:
                            TextStyle(letterSpacing: 1.2,fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )


          ),
        ),
        Expanded(flex: 1,
          child: Container(
            decoration: BoxDecoration(

              color: Color(0xff26263d),
              shape: BoxShape.circle,
            ),

child:   Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Image.asset(
    Img.get('hom.png',),height: 25,width: 28,
     ),
),

          ),
        ),
      ],),
        color: MyColors.primary,height: 68,)



    );
    // TODO: implement build


  }
}

class Photo extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Center(child: Container(child: Text('photo'),));
}

}
class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text('video'),));
  }

}
class videocal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Videocall"),));
  }

}
class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("chat"),));
  }

}


