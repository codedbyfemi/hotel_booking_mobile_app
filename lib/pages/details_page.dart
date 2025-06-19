import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.imageDir, required this.title});

  final String imageDir;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FF),
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                child: Image.asset(
                  imageDir,
                  width: double.infinity,
                  height: 471,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 89,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                            child: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                            child: Icon(Icons.favorite, color: Colors.red,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 24,
                left: 16,
                right: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Pantai Waecicu, Labuan Bajo, Kec.\nKomodo, Kabupaten Manggarai Barat, Nusa Tenggara Tim. 86554",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 16,
                bottom: 16,
                child: Column(
                  children: [
                    _thumbnail("assets/prv1.jpg"),
                    const SizedBox(height: 8),
                    _thumbnail("assets/prv2.jpg"),
                    const SizedBox(height: 8),
                    _thumbnail("assets/prv3.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _thumbnail(String path) {
    return Container(
      width: 54, // slightly larger than the image
      height: 54,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(14),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}
