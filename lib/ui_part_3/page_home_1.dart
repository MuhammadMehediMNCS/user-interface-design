import 'package:application_ui/ui_part_3/page_details.dart';
import 'package:application_ui/widgest/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class UserHome1 extends StatefulWidget {
  const UserHome1({super.key});

  @override
  State<UserHome1> createState() => _UserHome1State();
}

class _UserHome1State extends State<UserHome1> {
  int activeIndex = 0;
  final consoulImage = [
    'images/consoul_1.jpg',
    'images/consoul_2.jpeg',
    'images/consoul_3.jpg',
    'images/consoul_4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: buildTitle(),
        actions: [
          appbarImage()
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(12, 30, 12, 12),
        children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
              color: Colors.green.shade100
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Cari kempanye alam...',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 30),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 100,
              autoPlay: true,
              reverse: true,
              autoPlayInterval: const Duration(seconds: 2),
              onPageChanged: (index, reason) => setState(() => activeIndex = index)
            ),
            itemCount: consoulImage.length,
            itemBuilder: (context, index, realIndex) {
              final image = consoulImage[index];

              return buildImage(image, index);
            },
          ),
          const SizedBox(height: 16),
          Center(child: buildIndicator()),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ButtonWidget(
                icon: Icon(Icons.favorite, color: Colors.green,),
                text: 'Galang Dana'
              ),
              ButtonWidget(
                icon: Icon(Icons.spa, color: Colors.green,),
                text: 'Satu Hutan'
              ),
              ButtonWidget(
                icon: Icon(Icons.park, color: Colors.green,),
                text: 'Hutan Merdeka'
              ),
              ButtonWidget(
                icon: Icon(Icons.local_florist_sharp, color: Colors.green,),
                text: 'Rawat Bumi'
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Browser',
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
              ),
              TextButton(
                child: const Text('Lihat semau', style: TextStyle(fontSize: 11.0, color: Colors.green),),
                onPressed: () {}
              )
            ],
          ),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage())),
            child: homeImages(
              'images/home2.jpg',
              '100 Trees from LUCY\nto Indonesia',
              const Icon(Icons.local_florist_sharp, color: Colors.white,)
            ),
          ),
          homeImages(
            'images/home4.jpeg',
            'text',
            const Icon(Icons.favorite, color: Colors.white,)
          ),
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Welcome!',
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        Text(
          'Chirity Laudia',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
        )
      ],
    );
  }

  Widget appbarImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(
        'images/katrina_kaif.png',
        height: 50,
        width: 50,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildImage(String image, int index) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 24),
    child: Image.asset(
      image,
      fit: BoxFit.cover,
    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: consoulImage.length,
    effect: const JumpingDotEffect(
      dotHeight: 12,
      dotWidth: 12,
      activeDotColor: Colors.green,
      spacing: 15
    ),
  );

  Widget homeImages(String url, String text, Icon icon) {
    return Stack(
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          child: Image.asset(
            url,
            height: 130,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 6.0),
                const Text(
                  '220 Pohon Terkumpui',
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 12,
          right: 2,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Text(
                  '# LindungiHutan',
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                const SizedBox(height: 50.0),
                icon
              ],
            ),
          )
        )
      ],
    );
  }
}