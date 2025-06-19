import 'dart:ffi';

import 'package:flutter/material.dart';

class Hotelcard extends StatelessWidget {
  final String imageDir;
  final String title;
  final String subtitle;
  final String price;



  const Hotelcard({super.key, required this.imageDir, required this.title, required this.subtitle, required this.price,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                imageDir,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  SizedBox(height: 150,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                          title,
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                          Text(
                          subtitle,
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '$price',
                                style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '⭐️ 4.8',
                                    style: TextStyle(fontSize: 16, color: Colors.yellow),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}
