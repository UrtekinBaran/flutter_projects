import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset("lib/assets/images/logo.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, bottom: 8, right: 20),
                          child: Icon(
                            Icons.send,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
            Expanded(
              child: Container(
                  //width: 50,
                  child: SingleChildScrollView(
                    child: Column(
                                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StoryWidget("lib/assets/images/nathan.jpg", "Nathan Drake"),
                          StoryWidget("lib/assets/images/ellie.jpg", "Ellie Williams"),
                          StoryWidget("lib/assets/images/kratos.jpeg", "Kratos"),
                          StoryWidget("lib/assets/images/nathan.jpg", "Nathan Drake"),
                          StoryWidget("lib/assets/images/ellie.jpg", "Ellie Williams"),
                          StoryWidget("lib/assets/images/kratos.jpeg", "Kratos"),
                          StoryWidget("lib/assets/images/nathan.jpg", "Nathan Drake"),
                          StoryWidget("lib/assets/images/ellie.jpg", "Ellie Williams"),
                          StoryWidget("lib/assets/images/kratos.jpeg", "Kratos"),
                          StoryWidget("lib/assets/images/nathan.jpg", "Nathan Drake"),
                          StoryWidget("lib/assets/images/ellie.jpg", "Ellie Williams"),
                          StoryWidget("lib/assets/images/kratos.jpeg", "Kratos"),
                        ],
                      ),
                    ),
                    Postitem("lib/assets/images/nathan.jpg","lib/assets/images/post2.jpg", "Nathan Drake","İstanbul/Eminönü" ),
                    Postitem("lib/assets/images/ellie.jpg","lib/assets/images/bogaz.jpg", "Ellie Williams","İstanbul/Kadıköy"),
                    Postitem("lib/assets/images/kratos.jpeg","lib/assets/images/post3.jpg", "Kratos","İstanbul"),
                    Postitem("lib/assets/images/nathan.jpg","lib/assets/images/post2.jpg", "Nathan Drake","İstanbul/Eminönü" ),
                    Postitem("lib/assets/images/ellie.jpg","lib/assets/images/bogaz.jpg", "Ellie Williams","İstanbul/Kadıköy"),
                    Postitem("lib/assets/images/kratos.jpeg","lib/assets/images/post3.jpg", "Kratos","İstanbul"),
                                  ],
                                ),
                  )),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.home,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.smart_display,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.favorite,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.person,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Postitem(String avatar, String photo, String name, String location) => Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            avatar,
                          ),
                          radius: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
              ),
              Image.asset(photo),
              LikeCommentBox(),
              CommentBox("Kratos", "Çok iyi olmuş. eline sağlık. Muhteşem. Beni de etiketle" ),
              CommentBox("Ellie Williams", "Çok iyisin be dostum." ),
              CommentBox("Baran", "Muhteşem fotograf. tebrikler" ),
            ],
          ),
        ),
      );

  Padding LikeCommentBox() {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black87,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.comment_bank_outlined,
                      color: Colors.black87,
                    ),
                  ],
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  color: Colors.black87,
                ),
              ],
            ),
          );
  }

  Padding CommentBox(String name, String comment,) {
    return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RichText(
                    maxLines: 3,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        ),
                        TextSpan(text: " "),
                        TextSpan(
                          text: comment,
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),               
              ],
            ),
          );
  }

  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ] ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 35,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
