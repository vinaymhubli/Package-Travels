
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trveling/data/data.dart';
import 'package:trveling/model/country_model.dart';
import '../model/popular_tours.dart';
import 'details_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PopularTourModel> popularTourModels = [];
  List<CountryModel> country =  [];
  @override
  void initState() {
    country = getCountrys();
    popularTourModels = getPopularTours();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: Colors.transparent,
        leading: Container(
          padding: EdgeInsets.all(7),
          child: Image.asset(
            "assets/images/menu.png",
            height: 20,
            width: 20,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 30,
            ),
            Text(
              "ackage Tours",
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w600,fontSize: 25.0),
            )
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          )
        ],
        elevation: 0.0,
      ),
      
      body: SingleChildScrollView(
        
        child: Container(
          padding: EdgeInsets.only(left: 5,right:5),
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Unexplored Paradise in Karnataka",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Stack(
                    children: [
                      Image.asset('assets/images/QAOA.gif'),
                      Positioned(
                        right: 120,
                        top: 120,
                        child:Text(
                    "Malenadu",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ) ,)
                    ],
                    
                  ),
                  
                ),
                
                
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 240,
                  child: ListView.builder(
                      itemCount: country.length,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CountryListTile(
                          label: country[index].label,
                          countryName: country[index].countryName,
                          noOfTours: country[index].noOfTours,
                          rating: country[index].rating,
                          imgUrl: country[index].imgUrl,
                        );
                      }),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Popular places",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: popularTourModels.length,
                    itemBuilder: (context, index) {
                      return PopularTours(
                        desc: popularTourModels[index].desc,
                        imgUrl: popularTourModels[index].imgUrl,
                        title: popularTourModels[index].title,
                        price: popularTourModels[index].price,
                        rating: popularTourModels[index].rating,
                         innerdesc:popularTourModels[index].innerdesc
                         
                  ,

                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PopularTours extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String desc;
  final String price;
  final String innerdesc;
  final double rating;
  PopularTours(
      {required this.imgUrl,
      required this.rating,
      required this.desc,
      required this.price,
      required this.innerdesc,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(
                      imgUrl: imgUrl,
                      placeName: title,
                      rating: rating, 
                      placeDesc: innerdesc,
                      
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            color: Color(0xffE9F4F9), borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                width: 110,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4E6059)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff89A097)),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4E6059)),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 10, right: 8),
                padding: EdgeInsets.symmetric(horizontal: 1, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xff139157)),
                child: Column(
                  children: [
                    Text(
                      "$rating",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class CountryListTile extends StatelessWidget {
  final String label;
  final String countryName;
  final int noOfTours;
  final double rating;
  final String imgUrl;
  CountryListTile(
      {required this.countryName,
      required this.label,
      required this.noOfTours,
      required this.rating,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              height: 220,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 200,
            width: 150,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 8, top: 8),
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white38),
                        child: Text(
                          label,
                          style: TextStyle(color: Colors.orange),
                        ))
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              countryName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "18 Tours",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                        margin: EdgeInsets.only(bottom: 10, right: 8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white38),
                        child: Column(
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}