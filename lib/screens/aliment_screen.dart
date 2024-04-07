import 'package:flutter/material.dart';
import 'package:app_herbal_hands/screens/general_aliment_screen.dart';

class GeneralColumn extends StatelessWidget {
  const GeneralColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle the tap event here, navigate to the GeneralScreen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GeneralScreen()),
        );
      },
      child: _buildColumn(
        imagePath: 'assets/images/general.png',
        text: 'General',
      ),
    );
  }
}


class StomachColumn extends StatelessWidget {
  const StomachColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/stomach.png',
      text: 'Stomach',
    );
  }
}

class ObesityColumn extends StatelessWidget {
  const ObesityColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/obesity.png',
      text: 'Obesity',
    );
  }
}

class SleepColumn extends StatelessWidget {
  const SleepColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/sleep.png',
      text: 'Sleep',
    );
  }
}

class BloodColumn extends StatelessWidget {
  const BloodColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/blood.png',
      text: 'Blood',
    );
  }
}

class ThroatColumn extends StatelessWidget {
  const ThroatColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/throat.png',
      text: 'Throat',
    );
  }
}

class BonesColumn extends StatelessWidget {
  const BonesColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/bones.png',
      text: 'Bones',
    );
  }
}

class LungsColumn extends StatelessWidget {
  const LungsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/lungs.png',
      text: 'Lungs',
    );
  }
}

class KidneyColumn extends StatelessWidget {
  const KidneyColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/kidney.png',
      text: 'Kidney',
    );
  }
}

class Collaborate1Column extends StatelessWidget {
  const Collaborate1Column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/collaborate1.png',
      text: 'Collaborate',
    );
  }
}

class CircleImageAliment extends StatelessWidget {
  final String imagePath;

  const CircleImageAliment({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF4D4D4D),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: ClipOval(
          child: Image.asset(
            imagePath,
            width: 70, // Adjust as needed
            height: 70, // Adjust as needed
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

Widget _buildColumn({required String imagePath, required String text}) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      width: 100,
      height: 120, // Set height to 70
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImageAliment(imagePath: imagePath),
          SizedBox(height: 10), // Adjusted space between image and text
          Flexible(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18, // Font size set to 18
                fontFamily: 'Inria Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
