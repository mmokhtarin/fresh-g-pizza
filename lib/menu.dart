import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of menu items (Name, Price, Image path)
    final menuItems = [
      {
        'name': 'Cheese Pizza',
        'price': '\RM15.99',
        'image': 'assets/images/chpizza.jpg',
      },
      {
        'name': 'Pepperoni Pizza',
        'price': '\RM18.99',
        'image': 'assets/images/peppizza.jpg',
      },
      {
        'name': 'BBQ Chicken Pizza',
        'price': '\RM16.99',
        'image': 'assets/images/bbqpizza.jpg',
      },
      {
        'name': 'Veggie Pizza',
        'price': '\RM19.99',
        'image': 'assets/images/vegepizza.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Menu', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        padding: const EdgeInsets.all(12.0),
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12.0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  item['image']!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                item['name']!,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                item['price']!,
                style: const TextStyle(fontSize: 16, color: Colors.deepOrange, fontWeight: FontWeight.w600),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Selected ${item['name']}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}