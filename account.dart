import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        // Set this height
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              color: Color(0XFF0C331F),
              image: DecorationImage(
                  image: AssetImage('pictures/bg.png'), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  'Hello Mohammed',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'mohammed123@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: ListTile.divideTiles(context: context, tiles: [
              AccountTiles(
                img: 'pictures/credit.png',
                name: 'Ashal Credits',
              ),
              AccountTiles(
                img: 'pictures/puchase.png',
                name: 'Purchase Ammount',
              ),
              AccountTiles(
                img: 'pictures/orders.png',
                name: 'My Orders',
              ),
              AccountTiles(
                img: 'pictures/profile.png',
                name: 'Profile',
              ),
              AccountTiles(
                img: 'pictures/language.png',
                name: 'Language',
              ),
              AccountTiles(
                img: 'pictures/help.png',
                name: 'Help',
              ),
              AccountTiles(
                img: 'pictures/privacy.png',
                name: 'Privacy policy',
              )
            ]).toList(),
          )
        ],
      )),
    );
  }
}

class AccountTiles extends StatelessWidget {
  AccountTiles({Key? key, required this.name, required this.img})
      : super(key: key);
  String name;
  String img;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: AssetImage(img),
        height: 40,
        width: 40,
      ),
      title: Text(name,
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 16, color: Color(0XFF5B5B5B)))),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Color(0XFF5B5B5B),
          )),
    );
  }
}
