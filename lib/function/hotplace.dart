import 'package:flutter/material.dart';
import 'package:travell_app/colors_pictures.dart';
import 'package:travell_app/style.dart';
import 'package:travell_app/function/home.dart';
import 'package:travell_app/function_click.dart';
import 'package:travell_app/function/hotel.dart';

import 'package:travell_app/function/hotplace.dart';

import 'package:travell_app/function/restaurant.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:travell_app/rent.dart';

class Hotplace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: Container(
          width: MediaQuery.of(context).size.width - 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.darkSecondaryColor,
                AppColor.lightTertiaryColor,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.map,
                  color: AppColor.primaryColor,
                  size: 40,
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),);},
              ),
              IconButton(
                icon: Icon(
                  Icons.restaurant,
                  color: AppColor.primaryColor,
                  size: 40,
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Restaurant()),);},
              ),
              IconButton(
                icon: Icon(
                  Icons.local_hotel,
                  color: AppColor.primaryColor,
                  size: 40,
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Hotel()),);},
              ),
              IconButton(
                icon: Icon(
                  Icons.workspace_premium,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Hotplace()),);},
              ),
              IconButton(
                icon: Icon(
                  Icons.directions_car,
                  color: AppColor.primaryColor,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rentcar()),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.thermostat,
                  color: AppColor.primaryColor,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewPage('https://www.ventusky.com/?p=33.41;126.58;8&l=temperature-2m&t=20230526/1900'),
                    ),
                  );
                },
              ),
            ],
          )),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.secondaryColor,
              AppColor.tertiaryColor,
            ],
          ),
        ),

        child: ListView(
          children: [
            customAppBar(),
            Image.asset('assets/haru.jpeg', width: 200, height: 200,),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 25, right: 25, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(
                    text: '핫 플레이스!',
                    size: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotplace_picture.length,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: EdgeInsets.only(left: index  == 0 ? 30: 0),
                        child: hotDestinationCard(hotplace_picture[index]['imagePath'], hotplace_picture[index]['placeName'], hotplace_picture[index]['placeCount'], context ),
                      )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 25, right: 25, bottom: 30),
              child: Row(
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget hotDestinationCard(String imagePath, String placeName,
      String touristPlaceCount, BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DestinationDetail2(imagePath)))
      },
      child: Stack(children: [
        Hero(
          tag: imagePath,
          child: Container(
            height: 200,
            width: 140,
            margin: EdgeInsets.only(right: 25),
            padding: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 200,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent]),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PrimaryText(
                    text: placeName,
                    size: 15,
                    fontWeight: FontWeight.w800),
                SizedBox(height: 4),
                PrimaryText(
                    text: touristPlaceCount,
                    color: Colors.white54,
                    size: 10,
                    fontWeight: FontWeight.w800)
              ]),
        ),
      ]),
    );
  }

  Widget destinationCard(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DestinationDetail2(imagePath)))
      },
      child: Stack(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.only(right: 20),
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Opacity(
              opacity: 1.0,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [AppColor.secondaryColor, Colors.transparent],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding customAppBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: '제주도 여행',
            size: 32,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}

class WebViewPage extends StatelessWidget {
  final String url;

  WebViewPage(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.secondaryColor,
              AppColor.tertiaryColor,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 16, top: 16),
              child: IconButton(
                icon: Icon(
                  Icons.chevron_left,
                  color: AppColor.primaryColor,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Expanded(
              child: WebView(
                initialUrl: url,
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}