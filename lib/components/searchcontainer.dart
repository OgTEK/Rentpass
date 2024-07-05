import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../pages/search_page.dart';

//final profileImageUrl: 'profileImageUrl',

class searchcontainer extends StatelessWidget {
  const searchcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const searchpage()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        height: 50,
        decoration: BoxDecoration(
            //color: Colors.brown,
            color: const Color(0xFFDBE5DE),
            borderRadius: BorderRadius.circular(20)),
        child: const Row(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                ),
                Gap(4),
              ],
            ),
            Text(
              "Search numbers, accounts & scams...",
              style: TextStyle(
                color: Color(0xFF082018),
                fontSize: 12,
              ),
            ),
            Spacer(),
            CircleAvatar(
              radius: 24,
            ),
          ],
        ),
      ),
    );
  }
}
