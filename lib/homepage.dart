import 'package:flutter/material.dart';
import 'package:socialapp/Model/datamodel.dart';
import 'package:socialapp/card.dart';
import 'package:socialapp/details.dart';

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue.shade700,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.chat_outlined),
          SizedBox(width: 20),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: width,
                child: ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize
                      .max, // this will take space as minimum as posible(to center)
                  children: <Widget>[
                    Icon(
                      Icons.home_rounded,
                      color: Colors.blue,
                      size: 35,
                    ),
                    Icon(
                      Icons.ondemand_video,
                      size: 26,
                    ),
                    Icon(
                      Icons.store,
                      size: 26,
                    ),
                    Icon(
                      Icons.notifications_active_outlined,
                      size: 26,
                    ),
                    Icon(
                      Icons.menu,
                      size: 26,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.grey.shade200,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: userList.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return topPanel(width);
            }
            return MainCard(
              height: height,
              width: width,
              data: userList[index - 1],
            );
          },
        ),
      ),
    );
  }

  Container topPanel(double width) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
      height: 136,
      width: width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                    "https://static.theceomagazine.net/wp-content/uploads/2018/10/15093202/elon-musk.jpg"),
                radius: 30,
              ),
              SizedBox(
                width: width / 1.3,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(360),
                      borderSide: BorderSide(
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Divider(
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            height: 40,
            width: width,
            // color: Colors.orange,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButtons("Live", Icons.live_tv, Colors.red),
                RotatedBox(
                  quarterTurns: 1,
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                    color: Colors.black,
                  ),
                ),
                customButtons("Photo", Icons.photo_library, Colors.lightGreen),
                RotatedBox(
                  quarterTurns: 1,
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                    color: Colors.black,
                  ),
                ),
                customButtons(
                  "Room",
                  Icons.video_call,
                  Colors.purple.shade800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customButtons(String text, IconData icon, Color color) {
    return FlatButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(text),
    );
  }
}
