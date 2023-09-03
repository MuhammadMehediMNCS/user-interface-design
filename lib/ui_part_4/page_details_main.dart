import 'package:flutter/material.dart';

class DetailsPage2 extends StatelessWidget {
  const DetailsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailsDesign(),
    );
  }
}

class DetailsDesign extends StatefulWidget {
  const DetailsDesign({super.key});

  @override
  State<DetailsDesign> createState() => _DetailsDesignState();
}

class _DetailsDesignState extends State<DetailsDesign> {
  int value = 0;
  void increment() {
    setState(() {
      value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 15, 66, 107)),
          onPressed: () {}
        ),
        title: const Text('Face Mask', style: TextStyle(color: Color.fromARGB(255, 15, 66, 107)),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.takeout_dining, color: Color.fromARGB(255, 15, 66, 107)),
            onPressed: () {}
          ),
          IconButton(
            icon: const Icon(Icons.local_grocery_store_outlined, color: Color.fromARGB(255, 15, 66, 107)),
            onPressed: () {}
          )
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 320,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/mask_2.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              )
            ),
            Positioned(
              top: 300,
              child: Container(
                padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 234, 239, 243),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        rowText(),
                        rowDesign()
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '----------------------------------------------------',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Maiandra GD',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Container(
                      child: const Text(
                        'American grapes are very effective in metabolism, anti-inflammatory. In particular, people with stress, nervous stress, people with intestinal, liver and kidney diseases are always advised to eat American grapes daily to improve the situation. This imported American grape also scored in the eyes of women because of the beauty, whitening, .......................................................................................',
                        maxLines: 10,
                        style: TextStyle(
                          fontFamily: '',
                          fontSize: 12,
                          color: Color.fromARGB(255, 15, 66, 107),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40),
                        shape: const StadiumBorder()
                      ),
                      child: const Text('Order'),
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => buildSheet()
                      )
                    )
                  ],
                ),
              )
            ),
            Positioned(
              top: 280,
              left: 20,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 130,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 241, 240, 240),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)
                      )
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.join_full, color: Colors.grey,),
                          Text(
                            '4.5',
                            style: TextStyle(fontSize: 22,),
                          ),
                          Icon(Icons.star, color: Colors.amber,)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 90),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)
                      )
                    ),
                    child: const Icon(Icons.favorite, color: Colors.white,),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }

  Widget rowText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Face Mask',
          style: TextStyle(
            fontFamily: 'Maiandra GD',
            fontSize: 24, 
            fontWeight: FontWeight.bold, 
            color: Color.fromARGB(255, 15, 66, 107)
          ),
        ),
        Text(
          '1box/ 50 masks',
          style: TextStyle(
            fontFamily: 'Maiandra GD',
            fontSize: 12,
            color: Color.fromARGB(255, 15, 66, 107)
              /*
             Height 1 means Text comes to the power.
            height: 1 */
          ),
        )
      ],
    );
  }

  Widget rowDesign() {
    return Row(
      children: const [
        Text(
          '15.00',
          style: TextStyle(
            fontSize: 18,
            color: Colors.blue
          ),
        ),
        Text(
          'AED',
          style: TextStyle(
            fontSize: 12,
            color: Colors.blue,
            height: 2
          ),
        ),
      ],
    );
  }

  Widget buildSheet() => Container(
    padding: const EdgeInsets.only(top: 26, left: 18, right: 18),
    height: 120,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sheetMenu(),
            const Text(
              '30AED',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            )
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 40),
            shape: const StadiumBorder()
          ),
          child: const Text('Order'),
          onPressed: () => Navigator.of(context).pop()
        )
      ],
    ),
  );

  Widget sheetMenu() => Row(
    children: [
      Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)
          ),
          border: Border.all()
        ),
        child: const Center(
          child: Text(
            '-',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ),
      ),
      const SizedBox(width: 12),
      Text(
        '$value',
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      const SizedBox(width: 12),
      Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8)
          ),
          border: Border.all()
        ),
        child: Center(
          child: TextButton(
            child: Text(
              '+',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onPressed: increment
          )
        ),
      ),
    ],
  );
}