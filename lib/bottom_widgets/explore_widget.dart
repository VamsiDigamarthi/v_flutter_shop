import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_now/data/explore_data.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: GoogleFonts.josefinSans(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50,
                      ),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  suffixIcon: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.amber[400],
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 235, 239, 242),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                // color: Colors.red,
                child: ListView.builder(
                  itemCount: exploreData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 450,
                      clipBehavior: Clip.hardEdge,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            exploreData[index].image,
                            fit: BoxFit.fill,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                exploreData[index].name,
                                style: GoogleFonts.josefinSans(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                exploreData[index].price,
                                style: GoogleFonts.josefinSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
