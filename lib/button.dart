import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;

  const MyButton({
    Key? key,
    required this.icon,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.grey.shade100,
          width: 50,
          height: 50,
          child: Center(
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
