import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  String profile_image;
  String profile_name;
  String post_image;
  String description;
  bool isNetworkImage;
  BuildContext context;
  Post(this.profile_image, this.profile_name, this.post_image, this.description,this.isNetworkImage,
      this.context);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(widget.context).size.width;
    double height = MediaQuery.of(widget.context).size.height;

    return Container(
      margin: EdgeInsets.all(8),
      height: height / 1.5,
      width: width,
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
              left: 3,
              top: 3,
              child: CircleAvatar(
                backgroundImage: NetworkImage(widget.profile_image),
                maxRadius: 20,
              )),
          Positioned(
            left: 50,
            top: 15,
            child: Text(
              widget.profile_name,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            right: 3,
            top: 3,
            child: IconButton(
              onPressed: () {},
              icon: IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            top: 60,
            height: height / 2.2,
            width: width,
            child: widget.isNetworkImage ? Image.network(widget.post_image, fit: BoxFit.cover,): Image.asset(
              widget.post_image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 3,
            bottom: 70,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message_outlined,
                      size: 30, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.send_outlined, size: 30, color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 70,
            right: 3,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.bookmark_border_outlined,
                  size: 30, color: Colors.white),
            ),
          ),
          Positioned(
              bottom: 52,
              left: 3,
              child: Row(
                children: [
                  Text(
                    "${widget.profile_name}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${widget.description}",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
