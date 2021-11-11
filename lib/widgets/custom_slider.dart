import 'package:assign/data/my_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomIndicatorState();
  }
}

class CustomIndicatorState extends State<CustomIndicator> {

  int currentPos = 0;
  List<String> listPaths =  [
    'assets/images/image1.png',
    'assets/images/slider2.png',
  'assets/images/slider3.png'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(alignment: Alignment.center,
                    child: CarouselSlider.builder(
                      itemCount: listPaths.length,
                      options: CarouselOptions(height: 150,
                        aspectRatio: 16/14,
                        viewportFraction: 0.8,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentPos = index;
                            });
                          }
                      ),
                      itemBuilder: (context,index,int ){
                        return Container(
                            child: MyImageView(listPaths[index]));
                      },
                    ),
                  ),
                  Container(color: MyColors.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: listPaths.map((url) {
                        int index = listPaths.indexOf(url);
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: currentPos == index
                                ? Color(0xff4cbfc3)
                                : Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ]
            )
        ),
      ),
    );
  }
}

class MyImageView extends StatelessWidget{

  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

        margin: EdgeInsets.symmetric(horizontal: 2),
        child: Image.asset(imgPath,fit: BoxFit.fill,),
    );
  }

}
