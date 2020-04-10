import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
  title: "My Card",
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      primarySwatch: Colors.blueGrey
  ),
  home: MyCard(),
));


class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle display1 = Theme.of(context).textTheme.display1;
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage:AssetImage("images/moi.jpg"),
              ),
              Container(
                child: Center(
                  child: Text(
                    "Abderaouf Haithem AROUA",
                    style: GoogleFonts.pacifico(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
              Text(
                "Flutter developer",
                style: GoogleFonts.share(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 1.0,
                width: 180.0,
                color: Colors.white,
              ),
              GestureDetector(
                onTap: () => launch("tel:213553860821"),
                child: Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.phone),
                      SizedBox(width: 30.0,),
                      Text("+213553860821", style: GoogleFonts.share(fontSize: 28.0),),
                      SizedBox(width: 20.0,),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => launch("sms:213553860821"),
                child: Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.sms),
                      SizedBox(width: 30.0,),
                      Text("+213553860821", style: GoogleFonts.share(fontSize: 28.0),),
                      SizedBox(width: 20.0,),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: ()=> launch("mailto:aroua.abderaouf.ha@gmail.com"),
                child: Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.email),
                      Text("aroua.abderaouf.ha@gmail.com", style: GoogleFonts.share(fontSize: 18.0),),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => openLIProfile(),
                    child: Container(
                      height: 50.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: Text("LinkedIn", style: GoogleFonts.share(fontSize: 20.0, fontWeight: FontWeight.w600)),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => openFbProfile(),
                    child: Container(
                      height: 50.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: Text("Facebook", style: GoogleFonts.share(fontSize: 20.0, fontWeight: FontWeight.w600)),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => openMyWebSiteProfile(),
                    child: Container(
                      height: 50.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Center(child: Text("My WebSite", style: GoogleFonts.share(fontSize: 20.0, fontWeight: FontWeight.w600),),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,)
            ],
          ),
        ),
      ),
    );
  }
}

openFbProfile() async {
  const url = "https://www.facebook.com/aroua.abderaouf.haithem/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch the facebook profile page. Check your connection then retry';
  }
}
openLIProfile() async { //open linked in profile
  const url = 'https://www.linkedin.com/in/abderaouf-haithem-aroua-735344177/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch the LinkedIn profile page. Check your connection then retry';
  }
}
openMyWebSiteProfile() async {
  const url = 'https://000bobbob000000bob.wixsite.com/myprofile';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch the LinkedIn profile page. Check your connection then retry';
  }
}
