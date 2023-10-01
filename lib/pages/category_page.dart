// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_news/pages/categories/entertainment_page.dart';
import 'package:flutter_news/pages/categories/general_page.dart';
import 'package:flutter_news/pages/categories/health_page.dart';
import 'package:flutter_news/pages/categories/science_page.dart';
import 'package:flutter_news/pages/categories/sports_page.dart';
import 'package:flutter_news/pages/categories/technology_page.dart';
import 'package:flutter_news/pages/categories/top_headline_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_news/pages/categories/business_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Expanded(
        child: Row(
          children: [
            TopHeadline(),
            SizedBox(
              width: 20,
            ),
            Business(),
            SizedBox(
              width: 20,
            ),
            Entertainment(),
            SizedBox(
              width: 20,
            ),
            General(),
            SizedBox(
              width: 20,
            ),
            Health(),
            SizedBox(
              width: 20,
            ),
            Science(),
            SizedBox(
              width: 20,
            ),
            Sports(),
            SizedBox(
              width: 20,
            ),
            Technology()
          ],
        ),
      ),
    )).p8();
  }
}

class TopHeadline extends StatelessWidget {
  const TopHeadline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TopHeadlinePage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/top_headline_image.jpg",
              width: 140,
              height: 60,
              fit: BoxFit.cover,
            ),
             Container(
              color: Colors.white24,
              width: 140,
              height: 60,
              child: const Center(
                  child: Text(
                "Headlines",
                style: TextStyle(
                  color: Colors.black,
                    fontWeight: FontWeight.bold,
                    ),
                    textScaleFactor: 1.5,
              )),
            )
          ],
        ),
      ),
    );
  }
}

class Business extends StatelessWidget {
  const Business({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BusinessPage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/business_image.jpg",
              width: 140,
              height: 60,
              fit: BoxFit.cover,
            ),
             Container(
              color: Colors.white24,
              width: 140,
              height: 60,
              child: const Center(
                  child: Text(
                "Business",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    ),
                    textScaleFactor: 1.5,
              )),
            )
          ],
        ),
      ),
    );
  }
}

class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EntertainmentPage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/entertainment_image.jpg",
              width: 140,
              height: 60,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.white24,
              width: 140,
              height: 60,
              child: const Center(
                child: Text(
                  "Entertainment",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const GeneralPage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/general_image.jpg",
              width: 140,
              height: 60,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.white24,
              width: 140,
              height: 60,
              child: const Center(
                child: Text(
                  "General",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                      textScaleFactor: 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HealthPage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/health_image.jpg",
              width: 140,
              height: 60,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.white24,
              width: 140,
              height: 60,
              child: const Center(
                child: Text(
                  "Health",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                      textScaleFactor: 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Science extends StatelessWidget {
  const Science({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SciencePage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/science_image.jpg",
              width: 140,
              height: 60,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.white24,
              width: 140,
              height: 60,
              child: const Center(
                child: Text(
                  "Science",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                      textScaleFactor: 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SportsPage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          children: [
            Image.network(
              "https://www.nkvidyabhavan.org/images/Rules/sports.jpg",
              width: 140,
              height: 60,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.white24,
              width: 140,
              height: 60,
              child: const Center(
                child: Text(
                  "Sports",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                      textScaleFactor: 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Technology extends StatelessWidget {
  const Technology({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TechnologyPage()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/technology_image.jpg",
              width: 140,
              height: 60,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.white24,
              width: 140,
              height: 60,
              child: const Center(
                child: Text(
                  "Technology",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
