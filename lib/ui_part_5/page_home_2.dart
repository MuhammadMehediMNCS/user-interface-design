import 'package:flutter/material.dart';

class SizeHomePage extends StatefulWidget {
  const SizeHomePage({super.key});

  @override
  State<SizeHomePage> createState() => _SizeHomePageState();
}

class _SizeHomePageState extends State<SizeHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: const Text(
                '🏠 Biznis Hub',
                style: TextStyle(
                  fontFamily: 'Verdana',
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              height: 40,
              width: 190,
              child: TextField(
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.grey,
                  hintText: 'Search...',
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade200),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade200),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)
                    )
                  )
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20,),
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)
              ),
              child: Image.asset(
                'images/photo.jpg',
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              top: 50,
              left: 20,
              child: Text(
                'F o o d',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              )
            ),
            const Positioned(
              top: 70,
              left: 20,
              child: Text(
                '20% OFF',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildButton('images/button_1.png', 'Food'),
            buildButton('images/button_4.jpg', 'Fashion'),
            buildButton('images/button_5.png', 'Hand\nCrafted')
          ],
        ),
        const SizedBox(height: 12),
        buildText('Fashion'),
        const SizedBox(height: 12),
        products('images/photo_2.png'),
        const SizedBox(height: 12),
        buildText('Hand Crafted'),
        const SizedBox(height: 12),
        products('images/photo_3.png')
      ],
    ),
  );

  Widget buildButton(String url, String text) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12)
          ),
          child: Image.asset(
            url,
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 50,
          height: 38,
          child: Text(
            text,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  Widget buildText(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontFamily: 'Lucida Sans Unicode', fontSize: 14, fontWeight: FontWeight.bold),
        ),
        TextButton(
          child: const Text(
            'See all',
            style: TextStyle(fontFamily: 'Lucida Sans Unicode', fontSize: 12),
          ),
          onPressed: () {}
        )
      ],
    );
  }

  Widget products(String image) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              height: 140,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Lorem Ipsum',
                    style: TextStyle(fontFamily: 'Maiandra GD', fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '215.00',
                        style: TextStyle(fontFamily: 'Maiandra GD', fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue, height: 1),
                      ),
                      Text(
                    'AED',
                    style: TextStyle(fontFamily: 'Maiandra GD', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.blue),
                  )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}