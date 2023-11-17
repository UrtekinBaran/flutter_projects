import 'package:flutter/material.dart';

void main() {
  runApp(YoutubeMusic());
}

class YoutubeMusic extends StatelessWidget {
  const YoutubeMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            //62,36,17
            //48,14,32
            Container(
              height: 120,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  const Color.fromRGBO(62, 36, 17, 1),
                  const Color.fromRGBO(48, 14, 32, 1),
                ],
              )),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Image.asset(width: 30, "lib/assets/images/logo.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Music",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 27),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.podcasts,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 13,
                            backgroundImage: AssetImage("lib/assets/images/nathan.jpg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 6.0, bottom: 6.0, left: 12, right: 12),
                          margin: EdgeInsets.only(left: 3, right: 3),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(54, 255, 255, 255)),
                              color: const Color.fromARGB(47, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Energize",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 6.0, bottom: 6.0, left: 12, right: 12),
                          margin: EdgeInsets.only(left: 3, right: 3),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(54, 255, 255, 255)),
                              color: const Color.fromARGB(47, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Workout",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 6.0, bottom: 6.0, left: 12, right: 12),
                          margin: EdgeInsets.only(left: 3, right: 3),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(54, 255, 255, 255)),
                              color: const Color.fromARGB(47, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Feel good",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 6.0, bottom: 6.0, left: 12, right: 12),
                          margin: EdgeInsets.only(left: 3, right: 3),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(54, 255, 255, 255)),
                              color: const Color.fromARGB(47, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Relaxation",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 6.0, bottom: 6.0, left: 12, right: 12),
                          margin: EdgeInsets.only(left: 3, right: 3),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(54, 255, 255, 255)),
                              color: const Color.fromARGB(47, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Rock",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 6.0, bottom: 6.0, left: 12, right: 12),
                          margin: EdgeInsets.only(left: 3, right: 3),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(54, 255, 255, 255)),
                              color: const Color.fromARGB(47, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Pop",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromRGBO(7, 5, 8, 1),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADIO FROM A SONG",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 186, 186),
                              fontSize: 12),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick Picks",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 3,bottom: 3,right: 9,left: 9),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Play all",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 186, 186),
                                    fontSize: 12),
                              ),
                            )
                          ],
                        ),

                        MusicRow("lib/assets/images/music1.jpg","Moments","PaulWetz & Dillistone"),
                        MusicRow("lib/assets/images/music2.webp","Warrior","Oscar & the wolf"),
                        MusicRow("lib/assets/images/music3.jpg","Cymatics","Nigel Stanford"),
                        MusicRow("lib/assets/images/music4.jpg","Burning Sun","Monolink"),
                        MusicRow("lib/assets/images/music5.jpg","Radio Open","Adele"),
                        MusicRow("lib/assets/images/music6.webp","Turk Marsi","Bethoven"),
                        MusicRow("lib/assets/images/music7.jpg","Muslum Baba","Muslum Gurses"),
                        MusicRow("lib/assets/images/music8.jpg","Warrior","Oscar & the wolf"),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forgotten favorites",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 3,bottom: 3,right: 9,left: 9),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Play all",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 186, 186),
                                    fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MusicRow2("lib/assets/images/music1.jpg","Moments","PaulWetz & Dillistone"),
                              MusicRow2("lib/assets/images/music2.webp","Warrior","Oscar & the wolf"),
                              MusicRow2("lib/assets/images/music3.jpg","Cymatics","Nigel Stanford"),
                              MusicRow2("lib/assets/images/music1.jpg","Burning Sun","Monolink"),
                              MusicRow2("lib/assets/images/music5.jpg","Radio Open","Adele"),
                              MusicRow2("lib/assets/images/music6.webp","Turk Marsi","Bethoven"),
                              MusicRow2("lib/assets/images/music7.jpg","Muslum Baba","Muslum Gurses"),
                              MusicRow2("lib/assets/images/music3.jpg","Warrior","Oscar & the wolf"),
                            ],
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              color: Color.fromRGBO(33, 33, 33, 1),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),
                        Text(
                          "Samples",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.explore,
                          color: Colors.white,
                        ),
                        Text(
                          "Explore",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.subscriptions,
                          color: Colors.white,
                        ),
                        Text(
                          "Library",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.slideshow,
                          color: Colors.white,
                        ),
                        Text(
                          "Upgrade",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }

  Padding MusicRow2(String photo,String title, String artist) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset(photo,width: 150,),
                                SizedBox(height: 5,),
                                Text(title,style: TextStyle(
                                    color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold
                                ),),
                                Text(artist,style: TextStyle(
                                  color: Color.fromARGB(255, 181, 181, 181),
                                  fontSize: 14,

                                ),)
                              ],
                            )
                          ],
                        ),
                      );
  }

  Widget MusicRow(String photo,String title, String artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(photo,width: 70,),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(title,style: TextStyle(
                                    color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold
                                  ),),
                                  Text(artist,style: TextStyle(
                                    color: Color.fromARGB(255, 181, 181, 181),
                                    fontSize: 14,

                                  ),),
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.more_vert,color: Colors.white,),
                        ],
                      ),
    );
  }
}
