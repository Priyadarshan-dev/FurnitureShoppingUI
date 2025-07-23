import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: PageView(
              controller: _controller,
              children: [
                Stack(
                  children: [
                    // Center circle
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.deepPurpleAccent[200],
                            child: Text(
                              "Home",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),

                    // Top category
                    Positioned(
                      top: 0,
                      left: 115,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/sofa.png",
                          height: 50,
                        ),
                      ),
                    ),

                    // Top-right
                    Positioned(
                      top: 30,
                      right: 20,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/picture.png",
                          height: 35,
                        ),
                      ),
                    ),

                    // Right
                    Positioned(
                      top: 115,
                      right: 0,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/plants.png",
                          height: 45,
                        ),
                      ),
                    ),

                    // Bottom-right
                    Positioned(
                      bottom: 30,
                      right: 20,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/dinner.png",
                          height: 40,
                        ),
                      ),
                    ),

                    // Bottom
                    Positioned(
                      bottom: 0,
                      left: 115,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/closet.png",
                          height: 40,
                        ),
                      ),
                    ),

                    // Bottom-left
                    Positioned(
                      bottom: 30,
                      left: 20,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/table-lamp.png",
                          height: 40,
                        ),
                      ),
                    ),

                    // Left
                    Positioned(
                      top: 115,
                      left: 0,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/round-table.png",
                          height: 50,
                        ),
                      ),
                    ),

                    // Top-left
                    Positioned(
                      top: 30,
                      left: 20,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/bed.png", height: 50),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.deepPurpleAccent[200],
                        child: Text(
                          "Decor",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 115,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/television.png",
                          height: 40,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      right: 20,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/chair.png",
                          height: 45,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 115,
                      right: 0,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/gaming-chair.png",
                          height: 45,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      right: 20,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/lamp.png",
                          height: 45,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 115,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/room.png",
                          height: 45,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 20,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/vase.png",
                          height: 40,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 115,
                      left: 0,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/shoe.png",
                          height: 40,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/images/drawers.png",
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
        SmoothPageIndicator(
          controller: _controller,
          count: 2,
          effect: WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 10,
            dotColor: Colors.white.withOpacity(0.4),
            activeDotColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
