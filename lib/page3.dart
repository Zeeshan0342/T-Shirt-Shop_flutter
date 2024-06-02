import 'package:flutter/material.dart';
import 'package:t_shirt_shop_app/main.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Image.asset(
                'assets/images/star.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                width: 400,
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        'Congratulation My Online Shop',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(80)),
                          child: Icon(
                            Icons.favorite,
                            size: 10,
                            color: Colors.red,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/discount.jpg',
              width: 250,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 280, top: 20, bottom: 30),
              child: Row(
                children: [
                  Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(80)),
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.red,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.circular(80)),
                        child: Icon(
                          Icons.check,
                          size: 20,
                          color: Colors.red,
                        )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(title: '')));
              },
              child: Container(
                width: 400,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(80)),
                child: Center(
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
