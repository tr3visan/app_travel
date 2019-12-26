import 'package:app_travel/widgets/DestinationCarousel.dart';
import 'package:app_travel/widgets/HotelCarousel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildicon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 32),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 128),
              child: Text(
                "O que gostaria de visitar?",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map(
                (MapEntry map) => _buildicon(map.key)
              ).toList(),
            ),
            SizedBox(height: 20,),
            DestinationCarousel(),
            SizedBox(height: 20,),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value){
          setState(() {
            _currentTab = value;
          });
        },
        currentIndex: _currentTab,
          items: [
            BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: Icon(
                  Icons.search,
                  size: 30.0,
              )
            ),
            BottomNavigationBarItem(
                title: SizedBox.shrink(),
                icon: Icon(
                  Icons.local_pizza,
                  size: 30.0,
                )
            ),
            BottomNavigationBarItem(
                title: SizedBox.shrink(),
                icon: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1126262886756691974/TcDvOQ3Q_400x400.png'),
                )
            ),
          ]
      ),
    );
  }
}
