import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List <String> listItem = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        actions: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
            ),
            margin: const EdgeInsets.all(10),
            width: 30,
            height: 30,
            child: const Text('7', style: TextStyle(color: Colors.white, fontSize: 12),),
        )],
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.menu, color: Colors.white,),
        centerTitle: true,
        title: const Text('Apple Products', style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image:  AssetImage('assets/images/image_3.png'),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.4),
                      Colors.black.withOpacity(.2)
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Lifestyle sale', style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  const SizedBox(height: 30,),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    width: double.infinity,
                    height: 48,
                    child: const Text('Shop Now', style: TextStyle(fontSize: 12),),
                  ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
                child:GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 1,
                  children:
                    listItem.map((item) => cellOfList(item)).toList(),
                ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cellOfList (String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(item),
              fit: BoxFit.cover
            )
        ),
        child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            CupertinoIcons.heart_solid,
            color: Colors.red,
            size: 35,
            shadows: [BoxShadow(color: Colors.black, blurRadius: 10)],
          ),
        ],
      ),
      ),
    );
  }
}
