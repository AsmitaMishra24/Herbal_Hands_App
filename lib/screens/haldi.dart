import 'package:flutter/material.dart';

class HaldiScreen extends StatefulWidget {
  const HaldiScreen({Key? key}) : super(key: key);

  @override
  _HaldiScreenState createState() => _HaldiScreenState();
}

class _HaldiScreenState extends State<HaldiScreen> {
  int likes = 0;

  void likePost() {
    setState(() {
      likes++;
    });
  }

  void sharePost() {
    // Implement share functionality here
    print('Share button clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Turmeric/Haldi'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Turmeric',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8), // Add some spacing between the heading and tags
                  Row(
                    children: [
                      _buildTag('Cold & Flu'),
                      SizedBox(width: 8), // Add some spacing between the tags
                      _buildTag('Indigestion'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Turmeric is a bright yellow spice commonly used in cooking and traditional medicine. It contains curcumin, a substance with powerful anti-inflammatory and antioxidant properties. Here are some of the health benefits of turmeric:',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  _buildBenefitItem('Anti-inflammatory Properties'),
                  _buildBenefitItem('Antioxidant Effects'),
                  _buildBenefitItem('May Improve Brain Function'),
                  _buildBenefitItem('May Lower Risk of Heart Disease'),
                  _buildBenefitItem('May Help Prevent Cancer'),
                  _buildBenefitItem('May Aid in Digestion'),
                  SizedBox(height: 16),
                  Text(
                    'How to Use Turmeric:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Turmeric can be used in various ways:',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  _buildUsageItem('Add to Curries and Soups'),
                  _buildUsageItem('Make Golden Milk'),
                  _buildUsageItem('Use in Smoothies'),
                  _buildUsageItem('Make Turmeric Tea'),
                  _buildUsageItem('Use in Salad Dressings'),
                  SizedBox(height: 16),
                  Text(
                    'Home Remedy for Wound Healing:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Mix turmeric powder with honey to form a paste. Apply this paste to cuts, wounds, or minor burns to promote healing and prevent infection. Cover with a bandage and leave overnight.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.thumb_up),
                        onPressed: likePost,
                      ),
                      Text(
                        '$likes',
                        style: TextStyle(fontSize: 18),
                      ),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: sharePost,
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a comment...',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildBenefitItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check, color: Colors.green),
          SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  Widget _buildUsageItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.arrow_right, color: Colors.blue),
          SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}

