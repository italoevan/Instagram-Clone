import 'package:desktop/widgets/post.dart';
import 'package:desktop/widgets/stories.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  BuildContext context;
  HomeTab(this.context);
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [
          //STORIES//
          Container(
            height: height / 5.7,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stories(
                      context,
                      "https://images.unsplash.com/photo-1564564295391-7f24f26f568b",
                      "Your Story"),
                  SizedBox(
                    width: 5,
                  ),
                  Stories(
                      context,
                      "https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "Juan"),
                  SizedBox(
                    width: 5,
                  ),
                  Stories(
                      context,
                      "https://images.pexels.com/photos/935756/pexels-photo-935756.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "Lucy"),
                  SizedBox(
                    width: 5,
                  ),
                  Stories(
                      context,
                      "https://images.pexels.com/photos/567459/pexels-photo-567459.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "Gabriel"),
                ],
              ),
            ),
          ),
          Divider(
            height: 3,
            color: Colors.white,
          ),
          // -- POSTS -- //
          Post(
              "https://images.pexels.com/photos/567459/pexels-photo-567459.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
              "Gabriel",
              "images/image_post.jpg",
              "This is a beautiful tree",
              false,
              context),
          Post(
              "https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
              "Juan",
              "https://www.viajali.com.br/wp-content/uploads/2017/09/paisagens-lindas-21.jpg",
              "A beautiful sunset",
              true,
              context)
        ],
      ),
    ));
  }
}
