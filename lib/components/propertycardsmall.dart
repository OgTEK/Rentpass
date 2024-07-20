import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyCardMedium extends StatelessWidget {
  final int index;
  final String propertyName;
  final String propertyImageUrl;
  final String agentLogoUrl;
  final String address;
  final String agentName;
  final String price;
  final String updatedDate;
  final List<String> features;
  final ColorScheme colorScheme; // Accept ColorScheme as a parameter

  const PropertyCardMedium({
    super.key,
    required this.index,
    required this.propertyName,
    required this.propertyImageUrl,
    required this.agentLogoUrl,
    required this.address,
    required this.agentName,
    required this.price,
    required this.updatedDate,
    required this.features,
    required this.colorScheme, // Include ColorScheme in constructor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 189,
      height: 232,
      decoration: BoxDecoration(
        //border: Border.all(color: colorScheme.primary), // Use colorScheme
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Property Image and Agent Logo Container
          Container(
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {
                      // Handle bookmark/favorite action
                    },
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(agentLogoUrl),
                    radius: 20,
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 12),
          // Property Details and Price Container
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: const Color (0XFFFFFFFF), // Use colorScheme
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(//price
                      price,
                      style: GoogleFonts.sen(fontWeight: FontWeight.bold,fontSize: 16,),
                    ),
                    Text(//property name
                      propertyName,
                      style: GoogleFonts.sen(fontWeight: FontWeight.bold,fontSize: 12),
                    ),
                  ],
                ),
                const Gap(12),
                Row(
                  children: [
                    const Icon(Icons.location_on_rounded,size: 16,color: Colors.cyan,),
                    const Gap(4),
                    Text(
                      address,
                      style: GoogleFonts.sen(fontSize: 10),
                    ),

                  ],

                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PropertyFeatureChip extends StatelessWidget {
  final String label;

  const PropertyFeatureChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue, // Hardcoded color; customize as needed
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check, size: 16, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            label,
            style: GoogleFonts.sen(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
