import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPageView extends StatelessWidget {
  const FirstPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromARGB(255, 210, 214, 215),
              child: Image.network(
                "https://www.sassafras.in/cdn/shop/products/NVDRSS10837-1.jpg?v=1666362967",
                // "assets/images/paga_first.png.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 230,
              height: MediaQuery.of(context).size.height,
              // color: const Color.fromARGB(153, 210, 214, 215),
              // color: Color.fromARGB(188, 210, 214, 215),
              color: const Color.fromARGB(164, 210, 214, 215),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(20),
              // color: const Color.fromARGB(255, 210, 214, 215),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fancy",
                    style: GoogleFonts.josefinSans(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Shop The\nmost Modern\nessential",
                    style: GoogleFonts.josefinSans(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "welcome to Fancy",
                    style: GoogleFonts.josefinSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
