import 'package:flutter/material.dart';
import 'package:navigation_exp_434/app_routes.dart';
import 'package:navigation_exp_434/next_page.dart';
import 'package:navigation_exp_434/profile_page.dart';
import 'package:navigation_exp_434/setting_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> wallpaperData = [
    {
      'title': 'Abstract Painting',
      'url':
          'https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Blue Sky',
      'url':
          'https://images.pexels.com/photos/917494/pexels-photo-917494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Mountain Landscape',
      'url':
          'https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'City at Night',
      'url':
          'https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Ocean Waves',
      'url':
          'https://images.pexels.com/photos/355321/pexels-photo-355321.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Abstract Painting',
      'url':
          'https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Blue Sky',
      'url':
          'https://images.pexels.com/photos/917494/pexels-photo-917494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Mountain Landscape',
      'url':
          'https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'City at Night',
      'url':
          'https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Ocean Waves',
      'url':
          'https://images.pexels.com/photos/355321/pexels-photo-355321.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Abstract Painting',
      'url':
          'https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Blue Sky',
      'url':
          'https://images.pexels.com/photos/917494/pexels-photo-917494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Mountain Landscape',
      'url':
          'https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'City at Night',
      'url':
          'https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Ocean Waves',
      'url':
          'https://images.pexels.com/photos/355321/pexels-photo-355321.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Abstract Painting',
      'url':
          'https://images.pexels.com/photos/1616403/pexels-photo-1616403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Blue Sky',
      'url':
          'https://images.pexels.com/photos/917494/pexels-photo-917494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Mountain Landscape',
      'url':
          'https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'City at Night',
      'url':
          'https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'title': 'Ocean Waves',
      'url':
          'https://images.pexels.com/photos/355321/pexels-photo-355321.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            onTap: () {
              /* Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );*/

              Navigator.pushNamed(context, AppRoutes.profile);
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.setting);
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingPage()),
              );*/
            },
            icon: Icon(Icons.settings),
          ),
        ],
        title: Text('Home'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          mainAxisSpacing: 7,
          crossAxisSpacing: 7,
          childAspectRatio: 9 / 16,
        ),
        itemCount: wallpaperData.length,
        itemBuilder: (_, index) {
          final item = wallpaperData[index];
          return Card(
            elevation: 4,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.detail, arguments: item);

                ///Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(data: item,),));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(item['url']!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

///Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => NextPage(),
//
//                 /*Scaffold(
//                   appBar: AppBar(),
//                   body: Center(
//                     child: Text(
//                       'This feature is under construction.',
//                       style: TextStyle(fontSize: 25),
//                     ),
//                   ),
//                 ),*/
//               ),
//             );
//           },
//           child: Text('Next Page'),
//         ),
//       ),
