import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        //elevation: 0.0,
        leading: IconButton(icon: const Icon(Icons.arrow_back), color: Colors.orange,
          onPressed: () {Navigator.of(context).pop();
            },
        ),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Hero(
                tag: 'assets/images/chris.jpeg',
                child: Container(
                  color: Colors.greenAccent,
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(62.5),color: Colors.indigo,image: const DecorationImage(
                          fit: BoxFit.cover, image: AssetImage('assets/images/chris.jpeg'))
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              const Text(
                'Mark Sweater',
                style: TextStyle(
                    fontFamily: 'Montserrat',color: Colors.white12,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4.0),
              const Text(
                'San Jose, CAS',
                style: TextStyle(fontFamily: 'Montserrat', color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          '24K',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'FOLLOWERS',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          '31',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'TRIPS',
                          style: TextStyle(fontFamily: 'Montserrat', color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          '21',
                          style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'BUCKET LIST', style: TextStyle(fontFamily: 'Montserrat', color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(icon: const Icon(Icons.table_chart), onPressed: () {  },),
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              buildImages(),
              buildInfoDetail(),
              buildImages(),
              buildInfoDetail(),
            ],
          )
        ],
      ),
    );
  }

  Widget buildImages() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      child: Container(height: 50.0, decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),color: Colors.greenAccent,
              image: const DecorationImage(image: AssetImage('assets/images/beach1.jpeg'), fit: BoxFit.cover))),
    );
  }

  Widget buildInfoDetail() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Maldives - 12 Days',
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
              const SizedBox(height: 7.0),
              Row(
                children: <Widget>[
                  Text(
                    'Teresa Soto',
                    style: TextStyle(color: Colors.grey.shade700,
                        fontFamily: 'Montserrat',
                        fontSize: 11.0),
                  ),
                  const SizedBox(width: 4.0),
                  const Icon(Icons.timer, size: 4.0,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    '3 Videos', style: TextStyle(color: Colors.grey.shade500,
                        fontFamily: 'Montserrat',
                        fontSize: 11.0),
                  )
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: Container(height: 20.0, width: 20.0,
                  child: Image.asset('assets/navarrow.png'),
                ),
              ),
              const SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: Container(height: 20.0, width: 20.0,
                  child: Image.asset('assets/chatbubble.png'),
                ),
              ),
              const SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: Container(height: 22.0, width: 22.0,
                  child: Image.asset('assets/fav.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}