import 'package:flutter/material.dart';
import 'package:travell_app/colors_pictures.dart';
import 'package:travell_app/style.dart';

class DestinationDetail extends StatelessWidget {
  final String imagePath;
  const DestinationDetail(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return DestinationPage(imagePath, home_picture);
  }
}

class DestinationDetail2 extends StatelessWidget {
  final String imagePath;
  const DestinationDetail2(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return DestinationPage2(imagePath, hotplace_picture);
  }
}

class DestinationDetail3 extends StatelessWidget {
  final String imagePath;
  const DestinationDetail3(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return DestinationPage3(imagePath, restaurant_picture);
  }
}

class DestinationDetail4 extends StatelessWidget {
  final String imagePath;
  const DestinationDetail4(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return DestinationPage4(imagePath, hotel_picture);
  }
}

class DestinationPage extends StatelessWidget {
  final String imagePath;
  final List<Map<String, dynamic>> destinations;
  DestinationPage(this.imagePath, this.destinations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.chevron_left,
                        color: AppColor.primaryColor,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: _getPlaceName(imagePath),
                            size: 24,
                          ),
                          SizedBox(height: 10),
                          PrimaryText(
                            text: _getPlaceContext(imagePath),
                            size: 15,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PrimaryText(
                                text: '\n여행지',
                                size: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 160,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: destinations.map((destination) {
                                return hotDestinationCard(
                                  destination['imagePath'],
                                  destination['placeName'],
                                  destination['placeCount'],
                                  destination['placeContext'],
                                  context,
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget hotDestinationCard(
      String imagePath,
      String placeName,
      String touristPlaceCount,
      String placeContext,
      BuildContext context,
      ) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DestinationDetail(imagePath),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 160,
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
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getPlaceName(String imagePath) {
    for (var destination in destinations) {
      if (destination['imagePath'] == imagePath) {
        return destination['placeName'];
      }
    }
    return '';
  }

  String _getPlaceContext(String imagePath) {
    for (var destination in destinations) {
      if (destination['imagePath'] == imagePath) {
        return destination['placeContext'];
      }
    }
    return '';
  }
}
//////////////////////////////////////
class DestinationPage2 extends StatelessWidget {
  final String imagePath;
  final List<Map<String, dynamic>> destinations;
  DestinationPage2(this.imagePath, this.destinations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.chevron_left,
                        color: AppColor.primaryColor,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: _getPlaceName(imagePath),
                            size: 24,
                          ),
                          SizedBox(height: 10),
                          PrimaryText(
                            text: _getPlaceContext(imagePath),
                            size: 15,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PrimaryText(
                                text: '\n핫를레이스!',
                                size: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 160,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: destinations.map((destination) {
                                return hotDestinationCard(
                                  destination['imagePath'],
                                  destination['placeName'],
                                  destination['placeCount'],
                                  destination['placeContext'],
                                  context,
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget hotDestinationCard(
      String imagePath,
      String placeName,
      String touristPlaceCount,
      String placeContext,
      BuildContext context,
      ) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DestinationDetail2(imagePath),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 160,
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
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getPlaceName(String imagePath) {
    for (var destination in destinations) {
      if (destination['imagePath'] == imagePath) {
        return destination['placeName'];
      }
    }
    return '';
  }

  String _getPlaceContext(String imagePath) {
    for (var destination in destinations) {
      if (destination['imagePath'] == imagePath) {
        return destination['placeContext'];
      }
    }
    return '';
  }
}
//////////////////////////////////////////////////
class DestinationPage3 extends StatelessWidget {
  final String imagePath;
  final List<Map<String, dynamic>> destinations;
  DestinationPage3(this.imagePath, this.destinations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.chevron_left,
                        color: AppColor.primaryColor,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: _getPlaceName(imagePath),
                            size: 24,
                          ),
                          SizedBox(height: 10),
                          PrimaryText(
                            text: _getPlaceContext(imagePath),
                            size: 15,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PrimaryText(
                                text: '\n추천 음식점',
                                size: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 160,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: destinations.map((destination) {
                                return hotDestinationCard(
                                  destination['imagePath'],
                                  destination['placeName'],
                                  destination['placeCount'],
                                  destination['placeContext'],
                                  context,
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget hotDestinationCard(
      String imagePath,
      String placeName,
      String touristPlaceCount,
      String placeContext,
      BuildContext context,
      ) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DestinationDetail3(imagePath),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 160,
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
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getPlaceName(String imagePath) {
    for (var destination in destinations) {
      if (destination['imagePath'] == imagePath) {
        return destination['placeName'];
      }
    }
    return '';
  }

  String _getPlaceContext(String imagePath) {
    for (var destination in destinations) {
      if (destination['imagePath'] == imagePath) {
        return destination['placeContext'];
      }
    }
    return '';
  }
}




//////////////////////////
//////////////////////////
class DestinationPage4 extends StatelessWidget {
  final String imagePath;
  final List<Map<String, dynamic>> destinations;
  DestinationPage4(this.imagePath, this.destinations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.chevron_left,
                        color:AppColor.primaryColor,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: _getPlaceName(imagePath),
                            size: 24,
                          ),
                          SizedBox(height: 10),
                          PrimaryText(
                            text: _getPlaceContext(imagePath),
                            size: 15,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PrimaryText(
                                text: '\n숙소',
                                size: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 160,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: destinations.map((destination) {
                                return hotDestinationCard(
                                  destination['imagePath'],
                                  destination['placeName'],
                                  destination['placeCount'],
                                  destination['placeContext'],
                                  context,
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget hotDestinationCard(
      String imagePath,
      String placeName,
      String touristPlaceCount,
      String placeContext,
      BuildContext context,
      ) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DestinationDetail4(imagePath),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 160,
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
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AppColor.secondaryColor, Colors.transparent],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getPlaceName(String imagePath) {
    for (var destination in destinations) {
      if (destination['imagePath'] == imagePath) {
        return destination['placeName'];
      }
    }
    return '';
  }

  String _getPlaceContext(String imagePath) {
    for (var destination in destinations) {
      if (destination['imagePath'] == imagePath) {
        return destination['placeContext'];
      }
    }
    return '';
  }
}