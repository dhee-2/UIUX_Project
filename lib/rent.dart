import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:travell_app/colors_pictures.dart';

void main() {
  runApp(Rentcar());
}

class Rentcar extends StatefulWidget {
  @override
  _RentcarState createState() => _RentcarState();
}

class _RentcarState extends State<Rentcar> {
  List<Map<String, dynamic>> _responseData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    String projectKey = //'API키값 입력(''는 지우지마시오)';
    String url =
        'https://open.jejudatahub.net/api/proxy/01aDta180abt81t3ba0bt11taab88080/$projectKey?param1=value1&param2=value2';

    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        List<Map<String, dynamic>> extractedData = [];
        Map<String, dynamic> jsonResponse = json.decode(response.body);

        if (jsonResponse.containsKey('data')) {
          List<dynamic> data = jsonResponse['data'];

          for (var item in data) {

            if (item.containsKey('placeName') &&
                item.containsKey('addressDoro') &&
                item.containsKey('placeUrl')) {
              Map<String, dynamic> extractedItem = {
                'placeName': item['placeName'],
                'addressDoro': item['addressDoro'],
                'placeUrl': item['placeUrl'],
              };
              extractedData.add(extractedItem);
            }
          }
        }

        setState(() {
          _responseData = extractedData;
        });
      } else {
        setState(() {
          _responseData = [];
        });
      }
    } catch (error) {
      setState(() {
        _responseData = [];
      });
    }
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).padding.top), // 상태 표시줄 높이 만큼 간격 추가
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 1, top: 16),
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
                child: ListView.builder(
                  itemCount: _responseData.length,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      title: Text(
                        _responseData[index]['placeName'],
                        style: TextStyle(
                          color: Colors.indigo, // 텍스트 색상을 하늘색으로 변경
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _responseData[index]['addressDoro'],
                            style: TextStyle(
                              color: Colors.blue, // 텍스트 색상을 하늘색으로 변경
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL(_responseData[index]['placeUrl']);
                            },
                            child: Text(
                              _responseData[index]['placeUrl'],
                              style: TextStyle(
                                color: Colors.cyanAccent,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        // Handle item tap
                      },
                    );

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}