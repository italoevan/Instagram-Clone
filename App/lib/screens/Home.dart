import 'package:desktop/tabs/homeTab.dart';
import 'package:desktop/widgets/stories.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/Instagram.png",
          width: width / 3,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed:(){},
            icon:Icon(Icons.add_box_outlined)
          ),
          IconButton(
            onPressed:(){},
            icon:Icon(Icons.favorite_outline_outlined)
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_outlined),
          )
        ],
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(width: width, height: height, color: Colors.black),
          HomeTab(context)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        
        backgroundColor: Colors.black,
        items: [
          
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label:""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: ""),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.video_label,
                color: Colors.white,
              ),
              label: ""),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Colors.white,
              ),
              label: ""),
               BottomNavigationBarItem(
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1564564295391-7f24f26f568b")),
                
              label: ""
              
              )

        ],
      ),
    );
  }
}
