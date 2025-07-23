import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/Category/categorie_item.dart';
import 'package:task/Components/search_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF2E0065), Color(0xFF3D0D9B)],
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 22,
                          backgroundImage: AssetImage(
                            "assets/images/Profile.png",
                          ),
                        ),
                      ),
                      const SizedBox(width: 60),
                      Image.asset(
                        "assets/images/pin.png",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Anna Nagar",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        "assets/images/down-arrow.png",
                        height: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 50),
                      Image.asset(
                        "assets/images/bell.png",
                        height: 25,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        "assets/images/speech-bubble.png",
                        height: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  const SearchTextfield(),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        child: Text(
                          "Shop by Categories",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white, // White on dark bg
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  CategoryScreen(),

                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF2E0065),
                          child: Image.asset("assets/images/LeftArrow.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF2E0065),
                          child: Image.asset("assets/images/RightArrow.png"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
