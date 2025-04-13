import 'package:flutter/material.dart';

class SubcategoryScreen extends StatelessWidget {
  final int mainCategoryId;
  final String mainCategoryName;

  const SubcategoryScreen({
    super.key,
    required this.mainCategoryId,
    required this.mainCategoryName,
  });

  List<String> getSubcategories(int id) {
    const allSubcategories = {
      1: [
        'Kőműves munkák',
        'Betonozás és alapozás',
        'Térkövezés és burkolás',
        'Ácsmunkák és tetőszerkezet építés',
        'Bontás és építési törmelék elszállítás',
      ],
      2: [
        'Villanyszerelés',
        'Vízvezetékszerelés',
        'Fűtésszerelés és kazán karbantartás',
        'Gázszerelés és engedélyeztetés',
        'Klíma- és szellőzőrendszer telepítés',
      ],
      3: [
        'Festés, mázolás, tapétázás',
        'Gipszkartonozás és válaszfal építés',
        'Asztalos és bútorkészítés',
        'Nyílászáró beépítés (ajtók, ablakok)',
        'Redőny, zsaluzia és árnyékolástechnika',
      ],
      4: [
        'Kertépítés és parkosítás',
        'Öntözőrendszerek telepítése',
        'Kerti építmények és térburkolás',
        'Medence építés és karbantartás',
        'Kerítésépítés és kaputelefon szerelés',
      ],
      5: [
        'Okosotthon-rendszerek telepítése',
        'Biztonsági kamerák és riasztórendszerek',
        'Kaputelefon és beléptető rendszerek',
        'Hálózatépítés és internet beállítás',
        'Elektromos kapuk és garázsajtók szerelése',
      ],
      6: [
        'Költöztetés és bútorszállítás',
        'Lomtalanítás és hulladék elszállítás',
        'Pianínó és nehéz tárgyak szállítása',
        'Nemzetközi költöztetés',
        'Fuvarozás és csomagszállítás',
      ],
      7: [
        'Lakás- és nagytakarítás',
        'Ipari és üzleti takarítás',
        'Szőnyeg- és kárpittisztítás',
        'Ereszcsatorna tisztítás és duguláselhárítás',
        'Hóeltakarítás és síkosságmentesítés',
      ],
      8: [
        'Mosógép és szárítógép javítás',
        'Hűtőszekrény és fagyasztó javítás',
        'Klíma és légkondicionáló szerelés',
        'Mosogatógép és sütő javítás',
        'Porszívó és kisgépek szervize',
        'TV, házimozi és audio rendszerek szervize',
        'Számítógép és laptop javítás',
        'Telefon és tablet szerviz',
      ],
    };

    return allSubcategories[id] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final subcategories = getSubcategories(mainCategoryId);

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        title: Text(
          '$mainCategoryName\n> Alkategóriák',
          style: const TextStyle(fontSize: 16),
        ),
        toolbarHeight: 60,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: subcategories.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.arrow_right, color: Colors.orange),
                  title: Text(
                    subcategories[index],
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // Ide jöhet majd a következő oldalra navigáció
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Kiválasztva: ${subcategories[index]}'),
                    ));
                  },
                );
              },
            ),
          ),
          const Divider(height: 1),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Nem találod, amit keresel?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 6),
                Text(
                  'Írj nekünk egy javaslatot, és bővítjük a kategóriát!',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}