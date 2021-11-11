import 'package:assign/data/img.dart';
import 'package:assign/data/my_colors.dart';
import 'package:assign/theme/theme.dart';
import 'package:assign/widgets/custom_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return Home_state();
  }

}
class Home_state extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: MyColors.primary,
      body: ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: <Widget>[

        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(height: 2),
              Container(height:178,child: CustomIndicator()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Photos",style: theme().title18w,),
              ),
            Container(height: 200,width:MediaQuery.of(context).size.width-5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                      (i) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container( decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Img.get('vcw.png')),
                            fit: BoxFit.fitHeight,
                          ),),
                    width: 150,
                  //  color: Colors.accents[i % 16],
                    alignment: Alignment.center,
                    child: Text('$i'),
                  ),
                      ),
                ),
              ),
            ),
SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Videos",style: theme().title18w,),
              ),
              Container(height: 150,width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                        (i) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Img.get('video1.png')),
                              fit: BoxFit.fitWidth,
                            ),),
                      width: 160,
                   //   color: Colors.accents[i % 16],
                      alignment: Alignment.bottomRight,
                      child:Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,4,18.0),
                        child: Image.asset(
                          Img.get('play.png'),height: 25,width: 25,
                          color: Colors.white, ),
                      ),
                    ),
                        ),
                  ),
                ),
              ),
              Divider(),
             // _widgetsubcat("New Release",'5'),
              Divider(),
            //  _widgetsubcatgrid(_modelhome.products),
              Divider(),

            ],
          ),
        )

      ],
    ) ,);

  }

}