import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/util/coffee_tile.dart';
import 'package:flutter_coffee_shop/util/coffee_tile_vertical.dart';
import 'package:flutter_coffee_shop/util/coffee_type.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType = [
    ['Cappuccino', true],
    ['Latte', false],
    ['Black', false],
    ['Tea', false],
  ];
  final List coffeeItem = [
    [
      'lib/images/cappuccino.jpg',
      'Cappuccino',
      'With fresh milk',
      '4.8',
      '2.25'
    ],
    ['lib/images/latte.jpg', 'Latte', 'With oat milk', '4.7', '2.30'],
    ['lib/images/americano.jpg', 'Americano', 'on the rock', '4.5', '1.70'],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(color: Colors.orange),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          ],
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find the best coffee for you',
                  style: GoogleFonts.poppins(
                    fontSize: 38,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  height: 45,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeeType.length,
                    itemBuilder: (_, index) {
                      return CoffeeType(
                        coffeeType: coffeeType[index][0],
                        isSelected: coffeeType[index][1],
                        onTap: () {
                          coffeeTypeSelected(index);
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 310,
                  child: ListView.builder(
                    itemCount: coffeeItem.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return CoffeeTile(
                          coffeeImagePath: coffeeItem[index][0],
                          coffeeName: coffeeItem[index][1],
                          coffeeDesc: coffeeItem[index][2],
                          coffeeRating: coffeeItem[index][3],
                          coffeePrice: coffeeItem[index][4]);
                    },
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  'Special for you',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: coffeeItem.length,
                  itemBuilder: (_, index) {
                    return CoffeeTileVertical(
                        coffeeImagePath: coffeeItem[index][0],
                        coffeeTitle: coffeeItem[index][1],
                        coffeeDesc: coffeeItem[index][2]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
