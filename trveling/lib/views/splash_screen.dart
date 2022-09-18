import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trveling/views/home_page.dart';
class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.black,
          statusBarBrightness: Brightness.dark
        ),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left :18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/smg.jpg'),
              SizedBox(height: 50.0),
              CircularProgressIndicator(
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}