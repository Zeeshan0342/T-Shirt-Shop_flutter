import 'package:flutter/material.dart';
import 'package:t_shirt_shop_app/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T-Shirt Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/images/images (1).jpg',
      'assets/images/images (2).jpg',
      'assets/images/images (3).jpg',
      'assets/images/images (4).jpg',
      'assets/images/images (5).jpg',
      'assets/images/images (6).jpg',
      'assets/images/images (7).jpg',
      'assets/images/images (8).jpg',
      'assets/images/images (9).jpg',
      'assets/images/images.jpg'
    ];
    List name = [
      'Poma',
      'ThreadBear tees',
      'Inkwell Apparel',
      'Designs By Tee',
      'Cotton Cartel',
      'T-Shirt Tycoon',
      'Graphic Attire',
      'Inked Apparel Co',
      'Clothable',
      'The Wardrobe'
    ];
    List price = [
      '\$300',
      '\$746',
      '\$687',
      '\$642',
      '\$632',
      '\$863',
      '\$785',
      '\$186',
      '\$936',
      '\$246'
    ];
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 223, 232),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 27,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  Text(
                    'T-Shirt Shop',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black87),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 223, 232),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child:
                        Icon(Icons.menu_sharp, size: 20, color: Colors.black45),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 50,
                      childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 250,
                          height: 240,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 3, top: 3),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FavIconsState(),
                                  ],
                                ),
                                Image.asset(
                                  images[index],
                                  width: 160,
                                  height: 160,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  name[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  price[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => page2()));
                            },
                            child: Container(
                              width: 160,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.red[400],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

bool isfav = false;

class FavIconsState extends StatefulWidget {
  const FavIconsState({
    super.key,
  });

  @override
  State<FavIconsState> createState() => _FavIconsStateState();
}

class _FavIconsStateState extends State<FavIconsState> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isfav = !isfav;
        });
      },
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100)),
        child: Icon(
          Icons.favorite,
          size: 20,
          color: isfav ? Colors.red : Colors.black26,
        ),
      ),
    );
  }
}
