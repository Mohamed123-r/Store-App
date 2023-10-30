import 'package:flutter/material.dart';

class CastomCard extends StatelessWidget {
  const CastomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topRight,
      children: [
        Card(
          elevation: 6,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'data',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('dfvd'),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          child: Image.network(
              width: 150,
              height: 100,
              'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png'),
        ),
      ],
    );
  }
}
