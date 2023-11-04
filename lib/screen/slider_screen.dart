import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop_now/screen/super_main_screen.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 248, 248, 248),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Swipe to Show",
              style: GoogleFonts.josefinSans(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "This four-post blog series would act as a walk-through for setting ",
              style: GoogleFonts.josefinSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              // color: Colors.red,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        // margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://media2.newlookassets.com/i/newlook/852676701/girls/clothing/dresses/girls-black-ribbed-racer-dress.jpg?strip=true&qlt=50&w=720"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        // margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://image.clovia.com/media/clovia-images/images/275x412/clovia-picture-rw0062p18-699750.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        // margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/23566454/2023/6/8/8e806b42-a052-46a4-b9aa-928316a2a3e01686213871265BitiyabyBhamaGirlsBeigePinkReadytoWearLehenga1.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.47,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: Size(350, 60),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SuperMainScreen(),
                  ),
                );
              },
              child: Text(
                "Start Now",
                style: GoogleFonts.josefinSans(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Text(
              "you dont have account signin",
              style: GoogleFonts.josefinSans(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
