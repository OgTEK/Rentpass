import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rentpass/components/propertycardsmall.dart';
import 'components/search_bar.dart';
import 'components/propertycard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/searchcontainer.dart';

class HomePage extends StatelessWidget {
  final ColorScheme colorScheme;
  final String profileImageUrl;

  const HomePage(
      {Key? key, required this.colorScheme, required this.profileImageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove default back button
        toolbarHeight: 80,
        //backgroundColor: Colors.transparent,// Adjust height as needed
        title:
        // CustomSearchBar(
        //   colorScheme: colorScheme,
        // ),
          searchcontainer(
            //profileImageUrl: profileImageUrl,
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PropertyCardLarge(
                        index: 1,
                        address: '3 old marian',
                        propertyName: 'Sample Property',
                        propertyImageUrl:
                            'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg',
                        agentLogoUrl: 'assets/agent_logo.png',
                        agentName: 'Agent Name',
                        price: '\$500,000',
                        updatedDate: '1 day ago',
                        features: ['3 Beds', '2 Baths', '1500 sqft'],
                        colorScheme:
                            colorScheme, // Pass colorScheme to PropertyCardLarge
                      ),
                      Gap(12),
                      PropertyCardLarge(
                        index: 1,
                        address: '3 old marian',
                        propertyName: 'Sample Property',
                        propertyImageUrl:
                            'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg',
                        agentLogoUrl: 'assets/agent_logo.png',
                        agentName: 'Agent Name',
                        price: '\$500,000',
                        updatedDate: '1 day ago',
                        features: ['3 Beds', '2 Baths', '1500 sqft'],
                        colorScheme:
                            colorScheme, // Pass colorScheme to PropertyCardLarge
                      ),
                    ],
                  ),
                ),
                Gap(12),
                Row(
                  children: [
                    Text(
                      'Near You',
                      style: GoogleFonts.sen(fontWeight: FontWeight.bold,fontSize: 16,),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: GoogleFonts.sen(fontWeight: FontWeight.normal,fontSize: 12,),
                    )
                  ],
                ),
                Gap(12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PropertyCardMedium(
                        index: 1,
                        address: '3 old marian',
                        propertyName: 'Sample Property',
                        propertyImageUrl:
                            'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg',
                        agentLogoUrl: 'assets/agent_logo.png',
                        agentName: 'Agent Name',
                        price: '\$500,000',
                        updatedDate: '1 day ago',
                        features: ['3 Beds', '2 Baths', '1500 sqft'],
                        colorScheme:
                            colorScheme, // Pass colorScheme to PropertyCardLarge
                      ),
                      Gap(12),
                      PropertyCardMedium(
                        index: 1,
                        address: '3 old marian',
                        propertyName: 'Sample Property',
                        propertyImageUrl:
                            'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg',
                        agentLogoUrl: 'assets/agent_logo.png',
                        agentName: 'Agent Name',
                        price: '\$500,000',
                        updatedDate: '1 day ago',
                        features: ['3 Beds', '2 Baths', '1500 sqft'],
                        colorScheme:
                            colorScheme, // Pass colorScheme to PropertyCardLarge
                      ),
                    ],
                  ),
                ),
                Gap(12),
                Row(
                  children: [
                    Text(
                      'Near You',
                      style: GoogleFonts.sen(fontWeight: FontWeight.bold,fontSize: 16,),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: GoogleFonts.sen(fontWeight: FontWeight.normal,fontSize: 12,),
                    )
                  ],
                ),
                Gap(12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PropertyCardMedium(
                        index: 1,
                        address: '3 old marian',
                        propertyName: 'Sample Property',
                        propertyImageUrl:
                        'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg',
                        agentLogoUrl: 'assets/agent_logo.png',
                        agentName: 'Agent Name',
                        price: '\$500,000',
                        updatedDate: '1 day ago',
                        features: ['3 Beds', '2 Baths', '1500 sqft'],
                        colorScheme:
                        colorScheme, // Pass colorScheme to PropertyCardLarge
                      ),
                      Gap(12),
                      PropertyCardMedium(
                        index: 1,
                        address: '3 old marian',
                        propertyName: 'Sample Property',
                        propertyImageUrl:
                        'http://portfolio.asxds.com/assets/imgs/about/3/1.jpg',
                        agentLogoUrl: 'assets/agent_logo.png',
                        agentName: 'Agent Name',
                        price: '\$500,000',
                        updatedDate: '1 day ago',
                        features: ['3 Beds', '2 Baths', '1500 sqft'],
                        colorScheme:
                        colorScheme, // Pass colorScheme to PropertyCardLarge
                      ),
                    ],
                  ),
                ),
                Gap(12),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
