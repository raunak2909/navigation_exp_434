import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous screen
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.blue.shade800],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.5, 0.9],
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
                  ),
                  radius: 70.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('john.doe@example.com'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('+1 234 567 8900'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Location'),
            subtitle: Text('New York, USA'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About Me'),
            subtitle: Text(
                'Passionate Flutter developer with a love for creating beautiful and functional mobile applications. '
                'Always eager to learn new technologies and contribute to exciting projects.'),
            isThreeLine: true,
          ),
        ],
      ),
    );
  }
}
