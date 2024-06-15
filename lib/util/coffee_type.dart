// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType({
    Key? key,
    required this.coffeeType,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: onTap,
        child: Text(
          coffeeType,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.orange : Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
