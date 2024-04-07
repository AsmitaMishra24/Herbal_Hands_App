import 'package:app_herbal_hands/screens/aliment_screen.dart';
import 'package:app_herbal_hands/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_herbal_hands/screens/ingredient_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomeScreen(),
      routes: {
        '/ingredient': (context) => IngredientScreen(),
        '/aliment': (context) => AlimentScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: HomeS(),
        ),
      ),
    );
  }
}

class AlimentScreen extends StatelessWidget {
  const AlimentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: null,
      body: SafeArea(
        child: AlimentS(),
      ),
    );
  }
}

class AlimentS extends StatefulWidget {
  const AlimentS({Key? key}) : super(key: key);

  @override
  _AlimentSState createState() => _AlimentSState();
}

class _AlimentSState extends State<AlimentS> {
  int _currentPageIndex = 0;
  bool _ingredientVisible = true;

  @override
  Widget build(BuildContext context) {
    double containerWidth = 411.4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the home screen
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
                  (route) => false,
            );
          },
        ),
        title: Text(
          'Home Remedies',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Container(
            width: containerWidth,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: const Color(0xFF202125),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (_currentPageIndex != 0) {
                                  _currentPageIndex = 0;
                                  _ingredientVisible = false;
                                }
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _currentPageIndex == 0 ? Colors.grey[800] : null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Aliment',
                              style: TextStyle(
                                color: _currentPageIndex == 0 ? Colors.white : Colors.grey[400],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentPageIndex = 1;
                                _ingredientVisible = true;
                              });
                              Navigator.pushNamed(context, '/ingredient');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _currentPageIndex == 1 ? Colors.grey[800] : null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Ingredient',
                              style: TextStyle(
                                color: _currentPageIndex == 1 ? Colors.white : Colors.grey[400],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CustomScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  slivers: [
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                      ),
                      delegate: SliverChildListDelegate(_buildColumns()),
                    ),
                  ],
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildColumns() {
    if (_ingredientVisible) {
      return [
        // Add your custom column widgets here (GeneralColumn, StomachColumn, etc.)
        GeneralColumn(),
        StomachColumn(),
        ObesityColumn(),
        SleepColumn(),
        BloodColumn(),
        ThroatColumn(),
        BonesColumn(),
        LungsColumn(),
        KidneyColumn(),
        Collaborate1Column(),
      ];
    } else {
      return [];
    }
  }
}

class IngredientScreen extends StatelessWidget {
  const IngredientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: null,
      body: SafeArea(
        child: IngredientS(),
      ),
    );
  }
}

class IngredientS extends StatefulWidget {
  const IngredientS({Key? key}) : super(key: key);

  @override
  _IngredientSState createState() => _IngredientSState();
}

class _IngredientSState extends State<IngredientS> {
  int _currentPageIndex = 1;
  bool _ingredientVisible = true;

  @override
  Widget build(BuildContext context) {
    double containerWidth = 411.4;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the home screen
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
                  (route) => false,
            );
          },
        ),
        title: Text(
          'Home Remedies',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Container(
            width: containerWidth,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: const Color(0xFF202125),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentPageIndex = 0;
                                _ingredientVisible = false;
                              });
                              Navigator.pushNamed(context, '/aliment');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _currentPageIndex == 0 ? Colors.grey[800] : null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Aliment',
                              style: TextStyle(
                                color: _currentPageIndex == 0 ? Colors.white : Colors.grey[400],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentPageIndex = 1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _currentPageIndex == 1 ? Colors.grey[800] : null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              'Ingredient',
                              style: TextStyle(
                                color: _currentPageIndex == 1 ? Colors.white : Colors.grey[400],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CustomScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  slivers: [
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                      ),
                      delegate: SliverChildListDelegate(_buildColumns()),
                    ),
                  ],
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildColumns() {
    if (_ingredientVisible) {
      return [
        AdarakColumn(),
        AjwainColumn(),
        AnarColumn(),
        AmlaColumn(),
        DalchiniColumn(),
        DhaniyaColumn(),
        ElaichiColumn(),
        GheeColumn(),
        HaldiColumn(),
        Collaborate2Column(),
      ];
    } else {
      return [];
    }
  }
}
