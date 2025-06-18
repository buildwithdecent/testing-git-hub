import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  final String title;
  final String description;

  const Reusable({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        Divider(height: 30, thickness: 1),
      ],
    );
  }
}




class ItemCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;

  ItemCard({required this.imageUrl, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 6)],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(imageUrl, height: 100, width: 120, fit: BoxFit.cover),
          ),
          SizedBox(height: 10),
          Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(price, style: TextStyle(fontSize: 16, color: Colors.green)),
        ],
      ),
    );
  }
}
