// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_news/pages/category_article_page.dart';
import 'package:flutter_news/pages/widgets/category_item_widget.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_news/models/category_json.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({super.key});

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  String selectedCountry = 'us';
  // List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    Future.delayed(const Duration(seconds: 3));
    const apiKey =
        'ca75fb392995439ca0b4997ec99cff08'; // Replace with your API key
    final url =
        'https://newsapi.org/v2/top-headlines?country=$selectedCountry&category=business&apiKey=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      const CircularProgressIndicator();
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> articlesData = data['articles'];
      setState(() {
        CategoryModel.article = articlesData.map((articleJson) {
          return Article.fromJson(articleJson);
        }).toList();
      });
    } else {
      throw Exception('Failed to load news');
    }
  }

//BottomSheet for list of countries to select
  void showCountrySelectionBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView(
          children: [
            Center(
              child: const Text(
                "Select the country",
                textScaleFactor: 2.0,
                style: TextStyle(fontWeight: FontWeight.bold),
              ).py16(),
            ),
            ListTile(
              title: const Center(
                child: Text(
                  'Argentina',
                  textScaleFactor: 1.2,
                ),
              ),
              onTap: () {
                setState(() {
                  selectedCountry = 'ar';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Austria',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'at';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Australia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'au';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Belgium',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'be';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Bulgaria',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'bg';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Brazil',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'br';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Canada',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ca';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'China',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'cn';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Colombia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'co';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Cuba',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'cu';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Czech Republic',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'cz';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Egypt',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'eg';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'France',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'fr';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Germany',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'de';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Greece',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'gr';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Hong Kong',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'hk';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Hungary',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'hu';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Indonesia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'id';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Ireland',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ie';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'India',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'in';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Israel',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'il';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Italy',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'it';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Japan',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'jp';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Lithuania',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'lt';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Latvia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'lv';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Morocco',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ma';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Mexico',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'mx';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Malaysia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'my';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Nigeria',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ng';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Netherland',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'nl';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Norway',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'no';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'New Zealand',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'nz';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Philipines',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ph';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Poland',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'pl';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Portugal',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'pt';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Romania',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ro';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Russia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ru';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'South Korea',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'kr';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Serbia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'rs';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Saudi Arabia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'sa';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Sweden',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'se';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Singapore',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'sg';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Slovenia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'si';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Slovakia',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'sk';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'South Africa',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'za';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Thailand',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'th';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Turkey',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'tr';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Taiwan',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'tw';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'United Arab Emirates',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ae';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'United Kingdom',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'gb';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Ukraine',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'ua';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'United States of America',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 'us';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Center(
                  child: Text(
                'Venezuela',
                textScaleFactor: 1.2,
              )),
              onTap: () {
                setState(() {
                  selectedCountry = 've';
                  fetchNews();
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Business"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Text(
                    'Country: ',
                    textScaleFactor: 2.0,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    selectedCountry,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      showCountrySelectionBottomSheet(); // Show country selection bottom sheet
                    },
                    child: Text(selectedCountry),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: CategoryModel.article.length,
                itemBuilder: (context, index) {
                  final category = CategoryModel.article[index];
                  return InkWell(
                    child: CategoryItemWidget(
                      article: category,
                    ).expand(),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CategoryArticlePage(article: category)));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
