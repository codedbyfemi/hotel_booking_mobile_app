import 'package:flutter/material.dart';
import 'package:hotel_booking_mobile_app/pages/details_page.dart';

class Hotelcard extends StatelessWidget {
  final String imageDir;
  final String title;
  final String subtitle;
  final int price;

  const Hotelcard({
    super.key,
    required this.imageDir,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailsPage(imageDir: imageDir, title: title)));
      },
      child: Container(
        width: 145,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Image.asset(
                imageDir,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(subtitle,
                          style: TextStyle(
                              fontSize: 10, color: Colors.white70)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$$price/night",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Text("4.8", style: TextStyle(color: Colors.white))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

