import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_now/screen/slider_screen.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
                "https://img.freepik.com/premium-photo/two-girls-with-shopping-bags-standing-white-background_663949-2623.jpg?w=2000",
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Text(
                "FANCY",
                style: GoogleFonts.josefinSans(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                // color: const Color.fromARGB(255, 210, 214, 215),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        fixedSize: Size(350, 60),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.circle,
                        size: 30,
                      ),
                      label: Text(
                        "Welcome To Fancy",
                        style: GoogleFonts.josefinSans(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        fixedSize: Size(350, 60),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SliderScreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.circle_outlined,
                        size: 30,
                      ),
                      label: Text(
                        "Start Your Shoppings",
                        style: GoogleFonts.josefinSans(
                          fontSize: 19,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
