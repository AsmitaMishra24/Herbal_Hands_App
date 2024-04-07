import 'package:flutter/material.dart';

// Define a reusable function for building ingredient columns
Widget _buildColumn({required String imagePath, required String text}) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      width: 100, // Adjust width as needed
      height: 120, // Adjust height as needed
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImageIngredient(imagePath: imagePath),
          SizedBox(height: 10), // Adjusted space between image and text
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18, // Font size set to 18
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}

// Define classes for different ingredients
class AdarakColumn extends StatelessWidget {
  const AdarakColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/adarak.png',
      text: 'Adarak',
    );
  }
}

class AjwainColumn extends StatelessWidget {
  const AjwainColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/ajwain.png',
      text: 'Ajwain',
    );
  }
}

class AnarColumn extends StatelessWidget {
  const AnarColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/anar.png',
      text: 'Anar',
    );
  }
}

class AmlaColumn extends StatelessWidget {
  const AmlaColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/amla.png',
      text: 'Amla',
    );
  }
}

class DalchiniColumn extends StatelessWidget {
  const DalchiniColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/dalchini.png',
      text: 'Dalchini',
    );
  }
}

class DhaniyaColumn extends StatelessWidget {
  const DhaniyaColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/dhaniya.png',
      text: 'Dhaniya',
    );
  }
}

class ElaichiColumn extends StatelessWidget {
  const ElaichiColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/elaichi.png',
      text: 'Elaichi',
    );
  }
}

class GheeColumn extends StatelessWidget {
  const GheeColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/ghee.png',
      text: 'Ghee',
    );
  }
}

class HaldiColumn extends StatelessWidget {
  const HaldiColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/haldi.png',
      text: 'Haldi',
    );
  }
}

class Collaborate2Column extends StatelessWidget {
  const Collaborate2Column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/collaborate2.png',
      text: 'Collaborate',
    );
  }
}

// Define a class for the CircleImageIngredient
class CircleImageIngredient extends StatelessWidget {
  final String imagePath;

  const CircleImageIngredient({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF4D4D4D),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
