import 'package:flutter/material.dart';
import 'package:dashed_circle/dashed_circle.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
  BuildContext _context;
  String _urlImage;
  String _userName;
  Stories(this._context, this._urlImage, this._userName);
}

class _StoriesState extends State<Stories> with SingleTickerProviderStateMixin {
  //animations
  Animation gap;
  Animation base;
  Animation reverse;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(widget._context).size.width;
    double height = MediaQuery.of(widget._context).size.height;
    return Container(
      margin: EdgeInsets.all(7),
      child: Column(
        children: [
          RotationTransition(
            turns: base,
            child: DashedCircle(
                gapSize: gap.value,
                dashes: 40,
                color: Color(0XFFED4634),
                child: RotationTransition(
                  turns: reverse,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(widget._urlImage),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            widget._userName,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
