import 'package:flutter/material.dart';
import 'package:myapp/components/shoe_tile.dart';
import 'package:myapp/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'Reach the star with Nike Air. Just do it.',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ),

        // hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(child: ListView.builder(
          itemBuilder: (context, index) {
            Shoe shoe = Shoe(
              name: 'Lebron James',
              price: '350',
              description: 'Just do it',
              imagePath: 'lib/images/nike.png',
            );
            return ShoeTile(
              shoe: shoe,
            );
          },
        ))
      ],
    );
  }
}
