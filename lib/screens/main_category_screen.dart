import 'package:flutter/material.dart';
import 'subcategory_screen.dart';

class MainCategoryScreen extends StatelessWidget {
  const MainCategoryScreen({super.key});

  final List<Map<String, dynamic>> categories = const [
    {'id': 1, 'name': 'Építőipar és szerkezetépítés', 'icon': Icons.home_work},
    {'id': 2, 'name': 'Gépészet és épületgépészet', 'icon': Icons.plumbing},
    {'id': 3, 'name': 'Felújítás és lakberendezés', 'icon': Icons.format_paint},
    {'id': 4, 'name': 'Külső munkák és kertészet', 'icon': Icons.park},
    {'id': 5, 'name': 'Okos otthon és biztonságtechnika', 'icon': Icons.security},
    {'id': 6, 'name': 'Költöztetés és szállítás', 'icon': Icons.local_shipping},
    {'id': 7, 'name': 'Takarítás és karbantartás', 'icon': Icons.cleaning_services},
    {'id': 8, 'name': 'Háztartási gépek és műszaki szerviz', 'icon': Icons.build},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Válassz fő kategóriát szakember kereséshez'),
        backgroundColor: Colors.orange.shade700,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubcategoryScreen(
                    mainCategoryId: category['id'],
                    mainCategoryName: category['name'],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    category['icon'],
                    size: 48,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    category['name'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
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