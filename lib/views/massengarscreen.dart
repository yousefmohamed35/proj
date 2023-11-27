import 'package:flutter/material.dart';
import 'package:proj/views/story.dart';

import 'Chat.dart';
import 'searchBar.dart';

class MassengarScreen extends StatelessWidget {
  const MassengarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.menu,color: Colors.white,)),
        title: Text('Chats',style:TextStyle(color:Colors.white,fontSize: 32)),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.white,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.white,))
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,right: 8),
      
        child: ListView(
          children: [
            Searchbar(),
            Story(),
            Chat(),
          ],
        ),
      ),
    );
  }
}