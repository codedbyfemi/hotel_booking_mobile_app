import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.imageDir, required this.title, required this.price});

  final String imageDir;
  final String title;
  final int price;

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
                  SizedBox(height: 89),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            ),
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
                            child: Icon(Icons.favorite, color: Colors.red),
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
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "About Us",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Welcome to resort paradise we ensure the best service during your stay in bali with an emphasis on customer comfort. Enjoy Balinese specialties, dance and music every Saturday for free at competitive prices. You can enjoy all the facilities at our resort",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right:60),
                    child: Container(
                      height: 135,
                      width: 303,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Container(
                             height: 19,
                             child: Text(
                              "Services & Facilities",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                                                       ),
                           ),
                          SizedBox(height: 12,),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _facilityChip(Icons.check_circle, "Swimming pool", "Parking area", "Fitness center", "Wifi"),
                                _facilityChip(Icons.check_circle, "Swimming pool", "Parking area", "Fitness center", "Wifi"),

                              ],
                            )
                          ),
                          // _facilityChip(Icons.check_circle, "Parking area"),
                          // _facilityChip(Icons.check_circle, "Swimming pool"),
                          // _facilityChip(Icons.check_circle, "Swimming pool")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 10,
              offset: Offset(0, -4),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Price estimate",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Row(
                  children: [
                    Text(
                      "\$$price",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "/night",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF787878),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2C67FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
              ),
              child: const Text(
                "Reserve Now",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
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
        child: Image.asset(path, fit: BoxFit.cover),
      ),
    );
  }

  Widget _facilityChip(IconData icon, String label1, String label2, String label3, String label4) {
    return Container(
      height: 104,
      width: 110,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 16.25, color: Color(0xFF1C5BFF)),
              Text(
                label1,
                style: TextStyle(
                  color: Color(0xFF787878),
                    fontSize: 12
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(icon, size: 16.25, color: Color(0xFF1C5BFF)),
              Text(
                label2,

                style: TextStyle(
                  color: Color(0xFF787878),
                  fontSize: 12
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(icon, size: 16.25, color: Color(0xFF1C5BFF)),
              Text(
                label3,
                style: TextStyle(
                  color: Color(0xFF787878),
                    fontSize: 12
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(icon, size: 16.25, color: Color(0xFF1C5BFF)),
              Text(
                label4,
                style: TextStyle(
                  color: Color(0xFF787878),
                    fontSize: 12
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
