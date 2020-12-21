import 'package:flutter/material.dart';
import 'package:socialapp/Model/datamodel.dart';
import 'package:socialapp/card.dart';

class ProfilePage extends StatefulWidget {
  final PostModel model;

  const ProfilePage({Key key, this.model}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: height / 4 + 75,
                width: width,
                // color: Colors.yellow,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      width: width,
                      height: height / 4,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.model.coverPhoto),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3),
                          image: DecorationImage(
                            image: NetworkImage(widget.model.userphoto),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                widget.model.username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: width * 0.8,
                child: Text(
                  widget.model.bio,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "About",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              detailsTile(
                icon: Icons.home_outlined,
                title: "Lives in ",
                content: widget.model.address,
              ),
              detailsTile(
                icon: Icons.cake_outlined,
                title: "Born on ",
                content: widget.model.dob,
              ),
              detailsTile(
                icon: Icons.work_outline_rounded,
                title: "Works at ",
                content: widget.model.work,
              ),
              detailsTile(
                icon: Icons.verified_user_outlined,
                title: "Works as ",
                content: widget.model.workas,
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Posts",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              MainCard(
                height: height,
                width: width,
                data: widget.model,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile detailsTile({String content, String title, IconData icon}) {
    return ListTile(
      leading: Icon(icon),
      title: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 16),
          children: [
            TextSpan(text: title),
            TextSpan(
              text: content,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
