import 'package:flutter/material.dart';

class SmallCategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final bool hasNumber;

  const SmallCategoryIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    this.hasNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Stack(
            children: [
              Center(child: Icon(icon, size: 24, color: color)),
              if (hasNumber)
                Positioned(
                  top: 4,
                  right: 4,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
