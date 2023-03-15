import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const d_gold = Color.fromARGB(255, 247, 206, 24);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La Corniche Ouest',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchSection(),
              HotelSection(),
            ],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey.shade900,
        ),
        onPressed: null,
      ),
      title: Text(
        'Acceuil',
        style: GoogleFonts.nunito(
          color: Colors.orange.shade400,
          fontSize: 22,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.red.shade400,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.grey.shade900,
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
    );
  }
}

class HotelSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3000,
      color: Colors.blue.shade300,
    );
  }
}
