import 'package:flutter/material.dart';
import 'package:socialapp/Model/datamodel.dart';
import 'package:socialapp/details.dart';

class MainCard extends StatelessWidget {
  final PostModel data;
  final double height;
  final double width;

  const MainCard({Key key, this.data, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: 6,
      child: Container(
        // height: height,
        width: width,
        // color: Colors.grey.shade300,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange.shade300,
                backgroundImage: NetworkImage(data.userphoto),
                radius: 30,
              ),
              title: Text(
                data.username,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(data.time),
                  SizedBox(width: 10),
                  Icon(Icons.fiber_manual_record, size: 7, color: Colors.grey),
                  SizedBox(width: 10),
                  getstatusIcon(data.audience),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              // color: Colors.orange,
              // height: 228,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      data.mainText,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(
                            model: data,
                          ),
                        ),
                      );
                    },
                    child: Image.network(data.mainImage),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Row(
                      children: [
                        smallReactIcons(
                            Colors.blue.shade600, Icons.thumb_up_alt),
                        smallReactIcons(Colors.pinkAccent, Icons.favorite),
                        SizedBox(width: 10),
                        Text("7,288")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Text(
                    "5,214  Comments",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton.icon(
                  minWidth: width / 3 - 3,
                  // color: Colors.green,
                  onPressed: () {},
                  label: Text("Like"),
                  icon: Icon(Icons.thumb_up_alt_outlined),
                ),
                FlatButton.icon(
                  minWidth: width / 3 - 3,
                  onPressed: () {},
                  icon: Icon(Icons.chat_bubble_outline_rounded),
                  label: Text("Comment"),
                ),
                FlatButton.icon(
                  minWidth: width / 3 - 3,
                  onPressed: () {},
                  icon: Icon(Icons.share_rounded),
                  label: Text("Share"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getstatusIcon(AudienceType type) {
    if (type == AudienceType.everyone) {
      return Icon(Icons.public, size: 15);
    } else if (type == AudienceType.friends) {
      return Icon(Icons.group, size: 15);
    } else if (type == AudienceType.only_me) {
      return Icon(Icons.lock, size: 15);
    }
    return Icon(Icons.public, size: 15);
  }

  Container smallReactIcons(Color color, IconData icon) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(
        icon,
        size: 15,
        color: Colors.white,
      ),
    );
  }
}
