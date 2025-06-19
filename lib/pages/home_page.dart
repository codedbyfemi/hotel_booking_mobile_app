import 'package:flutter/material.dart';
import 'package:hotel_booking_mobile_app/util/hotel_card.dart';

import '../util/page_card.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List<Map<String, dynamic>> hotels = [
    {
      "imageDir": "assets/hny/hny1.jpg",
      "title": "Paradise Resort",
      "subtitle": "Labuan Bajo",
      "price": 480
    },

    {
      "imageDir": "assets/hny/hny2.jpg",
      "title": "Buntago",
      "subtitle": "Labuan Bajo",
      "price": 118
    },

    {
      "imageDir": "assets/hny/hny3.jpg",
      "title": "sultan",
      "subtitle": "Labuan Bajo",
      "price": 38
    }

  ];

  final List<Map<String, dynamic>> pages = [
    {
      "imageDir": "assets/expl/expl.jpg",
      "title": "Bali"
    },

    {
      "imageDir": "assets/expl/expl1.jpg",
      "title": "Labuan Bajo"
    },

    {
      "imageDir": "assets/expl/expl2.jpg",
      "title": "Lombok"
    }

  ];


  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/home/hotel_booking_mobile_app.jpg',
                fit: BoxFit.cover,
                height: 327,
              ),
              Column(
                children: [
                  SizedBox(height: 64,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: 132,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Location',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white
                                ),
                              ),
                              Text(
                                'Labuan Bajo, INA',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.grey,

                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular()
                              // ),
                            ),
                            IconButton(
                              icon: Icon(Icons.notifications_rounded, color: Colors.white,),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 66,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Look For Homestay',
                          suffixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none
                        )
                      ),

                    )
                  ),
                  SizedBox(height: 24,),
                  Container(
                    height: 77,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotel Near You", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                      Text("View All", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF2C67FF)),)
                    ],
                  ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 218, // Height of your horizontal scroll section
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Hotelcard(
                    imageDir: hotels[index]['imageDir'],
                    title: hotels[index]['title'],
                    subtitle: hotels[index]['subtitle'],
                    price: hotels[index]['price'],
                  ),
                );
              },
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Explore Place", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                Text("View All", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF2C67FF)),)
              ],
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(
            height: screenHeight * 0.2, // Height of your horizontal scroll section
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Pagecard(
                    imageDir: pages[index]['imageDir'],
                    title: pages[index]['title'],

                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30,)


        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF2C67FF),
        unselectedItemColor: Colors.grey,
        // currentIndex: _currentIndex,
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),


    );
  }
}
