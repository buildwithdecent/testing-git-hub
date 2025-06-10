import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String logoPath;
  final String brandName;
  final int productCount;

  const BrandCard({
    super.key,
    required this.logoPath,
    required this.brandName,
    required this.productCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            logoPath,
            height: 24,
            width: 24,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    brandName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.verified,
                    size: 16,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(height: 2),
              Text(
                '$productCount produ..',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
