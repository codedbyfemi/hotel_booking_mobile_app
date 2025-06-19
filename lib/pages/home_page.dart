import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                        IconButton(
                          icon: Icon(Icons.notifications),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 66,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Current Location',
                            style: TextStyle(fontSize: 18),
                          ),
                          Icon(Icons.search),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    height: 41,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    )
                  )
                ],
              )
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotel Near You", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
                      Text("View All", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF2C67FF)),)
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF2C67FF),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),

        items: [
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.home_rounded)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline)),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
