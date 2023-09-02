import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isSeleced = true;

  @override
  Widget build(BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text('Detail'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.share_sharp),
          onPressed: () {}
        )
      ],
    ),
    body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: double.maxFinite,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/home2.jpg'),
                  fit: BoxFit.cover
                )
              ),
            )
          ),
          Positioned(
            top: 220,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: Column(
                children: [
                  Container(
                    width: 30,
                    child: const Divider(thickness: 5),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      iconWidget(
                        const CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: Icon(Icons.park, color: Colors.green,)
                        ),
                        '1.500',
                        'Pohon Terkumpul'
                      ),
                      iconWidget(
                        const CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Icon(Icons.corporate_fare),
                        ),
                        '24 Mei',
                        'Batas Donasi'
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      demoTab(Colors.grey),
                      demoTab(Colors.green)

                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    child: Text(
                      'Donasi Kempanye Alam',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    child: Text(
                      'Donasimu akan dikalkulasikan dengan harga pohon\nyang sesual dengan kampanye alam kami',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  const SizedBox(height: 15),
                  Container(
                    child: Text(
                      'Pilih Nominal',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      containerButton('10.000', Colors.green.shade200),
                      containerButton('20.000', Colors.green.shade200),
                      containerButton('30.000', Colors.green)
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    child: Text(
                      'Pembayaran',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      rowButton(
                        Colors.white, 'Gopay'
                      ),
                      rowButton(
                        Colors.white, 'BRI mobile'
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(double.infinity, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                      )
                    ),
                    child: const Text('Donasi Sekarang'),
                    onPressed: () {}
                  )
                ],
              ),
            )
          )
        ],
      ),
    ),
  );

  Widget iconWidget(Widget icon, String title, subtitle) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Pohon Terkumppul',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget demoTab(Color color) {
    return Container(
      width: 150,
      child: Divider(thickness: 3, color: color),
    );
  }

  Widget containerButton(String text, Color color) {
    return Container(
      height: 45,
      width: 75,
      child: Center(
        child: Text(
          text
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color)
      ),
    );
  }

  ElevatedButton rowButton(Color color, String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: Colors.white,
        side: BorderSide(color: color),
        minimumSize: const Size(130, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        )
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
      onPressed: () {}
    );
  }
}