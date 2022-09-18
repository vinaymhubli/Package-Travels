
import 'package:trveling/model/country_model.dart';

import '../model/popular_tours.dart';

List<CountryModel> getCountrys() {
  List<CountryModel> country = [];
  CountryModel countryModel =  CountryModel(countryName: '', imgUrl: '', label: '', noOfTours: 3, rating: 5);

//1
  countryModel.countryName = "Kundadri";
  countryModel.label = "New";
  countryModel.noOfTours = 88;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/95/f8/f6/kudajadri-hills.jpg?w=800&h=-1&s=1";
  country.add(countryModel);
  countryModel =  CountryModel(
    countryName: 'Kundadri',
     imgUrl: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/95/f8/f6/kudajadri-hills.jpg?w=800&h=-1&s=1',
      label: 'New', 
      noOfTours: 15,
       rating: 4.5);

  //1
  countryModel.countryName = "Joga";
  countryModel.label = "New";
  countryModel.noOfTours = 100;
  countryModel.rating = 4.3;
  countryModel.imgUrl =
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/44/df/4b/jogg-falls.jpg?w=1200&h=-1&s=1";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Joga', 
  imgUrl: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/44/df/4b/jogg-falls.jpg?w=1200&h=-1&s=1',
   label: 'New', 
   noOfTours: 12, rating: 4.3);

  //1
  countryModel.countryName = "Kodachadri";
  countryModel.label = "New";
  countryModel.noOfTours = 85;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/b7/e9/6e/img-20180712-wa0035-largejpg.jpg?w=1100&h=-1&s=1";
  country.add(countryModel);
  countryModel = CountryModel(countryName: 'Kodachadri', 
  imgUrl: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/b7/e9/6e/img-20180712-wa0035-largejpg.jpg?w=1100&h=-1&s=1', 
  label: 'New',
  noOfTours: 18, rating: 4.5);

  //1
  countryModel.countryName = "Lion Safari";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/c4/b4/0f/safari-tiger-enclosure.jpg?w=1200&h=-1&s=1";
  country.add(countryModel);
  countryModel =  CountryModel(countryName: 'Lion Safari',
   imgUrl: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/c4/b4/0f/safari-tiger-enclosure.jpg?w=1200&h=-1&s=1', 
   label: 'New',
    noOfTours: 18,
    rating: 4.5);

  //1
  

  
  countryModel.countryName = "Nagara Fort";
  countryModel.label = "New";
  countryModel.noOfTours = 50;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/4b/3b/03/img-20170813-174659-hdr.jpg?w=1200&h=-1&s=1";
  country.add(countryModel);
  countryModel = CountryModel(countryName: 'Nagara Fort',
   imgUrl: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/4b/3b/03/img-20170813-174659-hdr.jpg?w=1200&h=-1&s=1', 
   label: 'New', noOfTours: 18, rating: 4.5);

  //1
  countryModel.countryName = "BRP Dam";
  countryModel.label = "New";
  countryModel.noOfTours = 100;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/d7/23/c4/img-20190310-182752-largejpg.jpg?w=1200&h=-1&s=1";
  country.add(countryModel);
  countryModel = CountryModel(countryName: '', imgUrl: '', label: '', noOfTours: 3, rating: 5);

  return country;
}

List<PopularTourModel> getPopularTours() {
  List<PopularTourModel> popularTourModels = [];
  PopularTourModel popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://www.trawell.in/admin/images/upload/85200278Agumbe_Sunset_Point_Main.jpg";
  popularTourModel.title = "Agumbe";
  popularTourModel.desc = "MUST WATCH";
  popularTourModel.price = "65 km from city center";
  popularTourModel.rating = 4.0;
  popularTourModel.innerdesc='Agumbe is registered as a UNESCO World Heritage Site and is famous for its rich biodiversity, waterfalls and red-hazy sun-set over the Arabian Sea. The village is also known as the Cobra Capital of India because of the number of Cobras that are found here and could be encountered while driving along the Ghats.';
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://images.pexels.com/photos/1658967/pexels-photo-1658967.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  popularTourModel.title = "Honnemaradu";
  popularTourModel.desc = "The Land of the Golden Sands";
  popularTourModel.price = "98 km from city center";
  popularTourModel.rating = 4.5;
  popularTourModel.innerdesc='Honnemaradu (a place of golden sand) is at a distance of 30 kms from GundiMane and is situated on the backwaters of Sharavathi river 25 kms from Sagar. It is popular among water sports enthusiasts as a site for kayaking, boating and other similar sports.';
  popularTourModels.add(popularTourModel);
  popularTourModel = PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Rameshwara_Temple_in_Keladi.jpg/800px-Rameshwara_Temple_in_Keladi.jpg";
  popularTourModel.title = "Keladi";
  popularTourModel.desc = "Keladi Rameshwara Temple";
  popularTourModel.price = "80 km from city center";
  popularTourModel.rating = 4.2;
  popularTourModel.innerdesc='Keladi was the first capital of the eminent Keladi Nayakas. The capital later was shifted to Ikkeri under Chandrappa Nayaka (A.D 1499-1544) and to Bidanur in A.D 1639 by Virabhadra Nayaka (A.D 1629-1645).';
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://images.indianexpress.com/2019/10/Sakrebailukarnataka-elephant-759.jpg";
  popularTourModel.title = "Sakrebailu ";
  popularTourModel.desc = "Elephant Training Camp";
  popularTourModel.price = "14 km from city center";
  popularTourModel.rating = 4.0;
  popularTourModel.innerdesc='On the Shimoga Thirthahalli road, around 14 km from Shimoga is the Sakrebailu Elephant Camp. The camp houses several captive elephants. Sakrebailu is an eco-tourism center. The elephants in these camps are trained by skilled Mahouts. The camp is located on the banks of the River Tunga';
  popularTourModels.add(popularTourModel);
  popularTourModel = PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://www.nativeplanet.com/photos/325x244x100/2018/11/photo-91-174915-1.jpg";
  popularTourModel.title = "Kunchikal Falls";
  popularTourModel.desc = " situated on RiverVarahi";
  popularTourModel.price = "96 km from city center";
  popularTourModel.rating = 4.0;
    popularTourModel.innerdesc='Which is the highest waterfall in India? Kunchikal Falls in Shimoga District Karnataka is the highest waterfall in India with a height of 1493 feet.';
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/9e/08/21/sri-sigandur-chowdeshwari.jpg?w=1200&h=1200&s=1";
  popularTourModel.title = "Sigandur";
  popularTourModel.desc = "Chowdeshwari Temple";
  popularTourModel.price = "103 km from city center";
  popularTourModel.rating = 4.0;
  popularTourModel.innerdesc='Locally known also as "Sigandooru", the city is well known for its Shri Chowdeshwari Temple that is dedicated to the Goddess Chowdeshwari. Present on the banks of the Sharavati River, the temple is a must-visit for many devotees from all over the world';
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://www.holidify.com/images/cmsuploads/compressed/india-waterfall-233330_20190409161851_20190409161917.jpg";
  popularTourModel.title = "Achakanya Falls";
  popularTourModel.desc = "trekking spot.";
  popularTourModel.price = "70 km from city center";
  popularTourModel.rating = 4.0;
  popularTourModel.innerdesc='Achakanya waterfall is one of the less explored natural beauties of Karnataka. The waterfall is located near the village of Aralasurali that lies about 10 km from the town of Thirthahalli in the Shimoga district of Karnataka.';
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

//1
  popularTourModel.imgUrl =
      "https://travel2karnataka.com/images/kavaledurga_bhuvanagiri_fort.jpg";
  popularTourModel.title = "Kavaledurga";
  popularTourModel.desc = "fort";
  popularTourModel.price = "70 km from city center";
  popularTourModel.rating = 4.0;
  popularTourModel.innerdesc='Kavaledurga Fort has 3 rounds of rock wall fortifications and was a stronghold of the Keladi Nayakas (an important ruling dynasty of Karnataka and the subordinates of Vijayanagara empire) during the 16th centur';
  popularTourModels.add(popularTourModel);
  popularTourModel =  PopularTourModel();

  return popularTourModels;
}