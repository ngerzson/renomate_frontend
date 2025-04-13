import 'package:flutter/material.dart';

class MainCategoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'id': 1, 'name': 'Építőipar és szerkezetépítés', 'icon': Icons.home_work},
    {'id': 2, 'name': 'Gépészet és épületgépészet', 'icon': Icons.plumbing},
    {'id': 3, 'name': 'Felújítás és lakberendezés', 'icon': Icons.format_paint},
    {'id': 4, 'name': 'Kertészet és külső munkák', 'icon': Icons.park},
    {'id': 5, 'name': 'Okos otthon és biztonságtechnika', 'icon': Icons.security},
    {'id': 6, 'name': 'Költöztetés és szállítás', 'icon': Icons.local_shipping},
    {'id': 7, 'name': 'Takarítás és karbantartás', 'icon': Icons.cleaning_services},
    {'id': 8, 'name': 'Háztartási gépek és műszaki szerviz', 'icon': Icons.build},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Válassz kategóriát'),
        backgroundColor: Colors.orange.shade700,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              // TODO: Navigálj a subcategory screen-re
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(category['icon'], size: 48, color: Colors.orange),
                  const SizedBox(height: 8),
                  Text(
                    category['name'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
} 