import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  /*Map<String, dynamic> data;

  NextPage({required this.data});
*/
  @override
  Widget build(BuildContext context) {

    Map<String, dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(data['title']),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(data['url']), fit: BoxFit.cover)
        ),
      )
    );
  }
}
