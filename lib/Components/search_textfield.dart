import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Search anything ....",
              style: GoogleFonts.urbanist(color: Colors.white),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 40,
              width: 40,
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: Color(0xFF3D0D9B),
              ),
              child: Image.asset(
                "assets/images/Search.png",
                color: Colors.white,
                height: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
