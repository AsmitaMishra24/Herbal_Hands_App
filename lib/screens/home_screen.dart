import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: SafeArea(
          child: HomeS(),
        ),
      ),
    );
  }
}

class HomeS extends StatelessWidget {
  const HomeS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 412,
        height: 892,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xFF202125),
        ),
        child: Column(
          children: [
            SearchBar(), // Add the SearchBar widget here
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(20),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  HomeRemediesColumn(),
                  CreatePostColumn(),
                  CommunityColumn(),
                  ShopColumn(),
                  DoctorColumn(),
                  BlogsColumn(),
                  DiscoverColumn(),
                  AccountColumn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        width: 370,
        height: 48,
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(90),
          boxShadow: [
            BoxShadow(
              color: const Color(0x3F000000),
              blurRadius: 1,
              offset: const Offset(0, 1),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {
                // Add your search functionality here
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for Home Remedies',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.mic),
              color: Colors.black,
              onPressed: () {
                // Add your microphone functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}


class HomeRemediesColumn extends StatelessWidget {
  const HomeRemediesColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImage(imagePath: 'assets/images/home_remedies.png'),
          SizedBox(height: 20),
          Text(
            'Home Remedies',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class CreatePostColumn extends StatelessWidget {
  const CreatePostColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImage(imagePath: 'assets/images/create_post.png'),
          SizedBox(height: 20),
          Text(
            'Create post',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class CommunityColumn extends StatelessWidget {
  const CommunityColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImage(imagePath: 'assets/images/community.png'),
          SizedBox(height: 20),
          Text(
            'Community',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class ShopColumn extends StatelessWidget {
  const ShopColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImage(imagePath: 'assets/images/shop.png'),
          SizedBox(height: 20),
          Text(
            'Shop',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorColumn extends StatelessWidget {
  const DoctorColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImage(imagePath: 'assets/images/doctor.png'),
          SizedBox(height: 20),
          Text(
            'Doctor',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class BlogsColumn extends StatelessWidget {
  const BlogsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImage(imagePath: 'assets/images/blogs.png'),
          SizedBox(height: 20),
          Text(
            'Blogs',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class DiscoverColumn extends StatelessWidget {
  const DiscoverColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImage(imagePath: 'assets/images/discover.png'),
          SizedBox(height: 20),
          Text(
            'Discover',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class AccountColumn extends StatelessWidget {
  const AccountColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleImage(imagePath: 'assets/images/account.png'),
          SizedBox(height: 20),
          Text(
            'Account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  final String imagePath;

  const CircleImage({Key? key, required this.imagePath}) : super(key: key);

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
