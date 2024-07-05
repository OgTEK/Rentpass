import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class PropertyCardLarge extends StatelessWidget {
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

  const PropertyCardLarge({
    Key? key,
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 298,
      height: 418,
      decoration: BoxDecoration(
        //border: Border.all(color: colorScheme.primary), // Use colorScheme
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Property Image and Agent Logo Container
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: Icon(Icons.favorite_border),
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
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: Color (0XFFFDBE5DE), // Use colorScheme
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(//price
                      price,
                      style: GoogleFonts.sen(fontWeight: FontWeight.bold,fontSize: 20,),
                    ),
                    Text(//property name
                      propertyName,
                      style: GoogleFonts.sen(fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                  ],
                ),
                Gap(12),
                Row(
                  children: [
                    Icon(Icons.location_on_rounded,size: 20,color: Colors.cyan,),
                    Gap(4),
                    Text(
                      '$address',
                      style: GoogleFonts.sen(fontSize: 14),
                    ),

                  ],

                ),
Gap(16),
                Row(
                  children: features
                      .map((feature) => PropertyFeatureChip(label: feature))
                      .toList(),
                ),
                Gap(16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(agentLogoUrl),
                          radius: 12,
                        ),
                        Gap(4),
                        Text(
                          '$agentName',
                          style: GoogleFonts.sen(fontSize: 14),
                        ),

                      ],

                    ),

                    Text(
                      '$updatedDate',
                      style: GoogleFonts.barlow(fontSize: 14),
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

  const PropertyFeatureChip({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(20),
        //color: Colors.blue, // Hardcoded color; customize as needed
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.bed, size: 16, color: Colors.black38),
          SizedBox(width: 4),
          Text(
            label,
            style: GoogleFonts.sen(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
