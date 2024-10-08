import 'package:beauty/goggle_fonts.dart';
import 'package:beauty/pages/botton.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Beauty extends StatelessWidget {
  const Beauty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [BG, BG2],
                ),
              ),
              child: Column(
                children: [
                  Gap(10),
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/fell.png"),fit: BoxFit.cover)
                    ),
                  ),
                  Gap(10),
                  Container(
                    width: double.infinity,
                    height: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/pngtree-perfume-glass-leaves-png-image_9129340.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                        "Hey, are you ready? Let's get ready and head out to shop for some beauty products!",
                      style: style(20, third),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder) => CustomBottomNavBar()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: third, width: 4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Let's Shop", style: myStyle(25, third)),
                          Gap(10),
                          Icon(Icons.arrow_forward, color: third, size: 25),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


