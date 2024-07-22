import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/Logo.png', width: 180, height: 130),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings_outlined),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: TextStyle(
                          color: Color(0xff4838D1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                tabs: [
                  Tab(text: 'Art'),
                  Tab(text: 'Business'),
                  Tab(text: 'Comedy'),
                  Tab(text: 'Drama'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Recommended For You',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more',
                      style: TextStyle(
                          color: Color(0xff4838D1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        buildBookCard('assets/images/Image Placeholder 1.png'),
                        SizedBox(width: 10),
                        buildBookCard('assets/images/Image Placeholder 1 (1).png'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Best Seller',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See more',
                            style: TextStyle(
                                color: Color(0xff4838D1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    buildBestSellerCard(
                        'Light Mage', 'Laurie Forest', 'assets/images/Image Placeholder 2.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Library',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff4838D1),
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget buildBookCard(String imagePath) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, width: 150, height: 200, fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget buildBestSellerCard(String title, String author, String imagePath) {
    return Row(
      children: [
        Image.asset(imagePath, width: 80, height: 100, fit: BoxFit.cover),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              author,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}