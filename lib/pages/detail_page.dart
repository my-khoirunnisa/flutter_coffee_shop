// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.coffeeImage,
    required this.coffeeTitle,
    required this.coffeeSubTitle,
    required this.coffeeRating,
    required this.coffeePrice,
  }) : super(key: key);

  final String coffeeImage;
  final String coffeeTitle;
  final String coffeeSubTitle;
  final String coffeeRating;
  final String coffeePrice;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black45,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image.asset(
                      coffeeImage,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: -130,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 24, 24, 24),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    coffeeTitle,
                                    style: GoogleFonts.poppins(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    coffeeSubTitle,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 5),
                                        child: Text(
                                          coffeeRating,
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '(6.986)',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: Colors.grey.shade500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black45,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            children: [
                                              const Icon(
                                                Icons.coffee,
                                                color: Colors.orange,
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                'Coffee',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 11,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black45,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            children: [
                                              const Icon(
                                                Icons.local_drink,
                                                color: Colors.orange,
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                'Milk',
                                                style: GoogleFonts.poppins(
                                                  fontSize: 11,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black45,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'Medium Roasted',
                                        style: GoogleFonts.poppins(
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      right: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.grey.shade900,
                                    Colors.black,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.grey.shade900,
                                  Colors.black,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 135),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et',
                        style: GoogleFonts.poppins(),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Size',
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                // color: Colors.grey.shade900.withOpacity(0.75),
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.orange, width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 50),
                              child: Text(
                                'S',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 50),
                              child: Text(
                                'M',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 50),
                              child: Text(
                                'L',
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 90,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$ ',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Colors.orange,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          coffeePrice,
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Text(
                      'Buy Now',
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
