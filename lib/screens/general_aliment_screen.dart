import 'package:flutter/material.dart';
import 'Cold_Screen.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 4.0, // Spacing between columns
        mainAxisSpacing: 6.0, // Spacing between rows
        padding: EdgeInsets.all(4.0), // Padding around the grid
        children: [
          ColdColumn(),
          IndigestionColumn(),
          VomitingColumn(),
          Collaborate3Column(),
        ],
      ),
    );
  }
}

class ColdColumn extends StatelessWidget {
  const ColdColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ColdScreen()),
        );
      },
      child: _buildColumn(
        imagePath: 'assets/images/general.png',
        text: 'Cold',
      ),
    );
  }
}

class IndigestionColumn extends StatelessWidget {
  const IndigestionColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/stomach.png',
      text: 'Indigestion',
    );
  }
}

class VomitingColumn extends StatelessWidget {
  const VomitingColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/vomiting.png',
      text: 'Vomiting',
    );
  }
}

class Collaborate3Column extends StatelessWidget {
  const Collaborate3Column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumn(
      imagePath: 'assets/images/collaborate2.png',
      text: 'Collaborate',
    );
  }
}

Widget _buildColumn({required String imagePath, required String text}) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      width: 120,
      height: 120, // Set height to 120
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(imagePath),
            ),
          ),
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
