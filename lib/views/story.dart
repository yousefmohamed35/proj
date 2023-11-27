import 'package:flutter/material.dart';
import 'package:proj/model/models.dart';

class Story extends StatelessWidget {
  Story({super.key});
  List<StoryModel> item = [
    StoryModel(image: 'assets/m.jpg', text: 'Your Story'),
    StoryModel(image: 'assets/a.png', text: 'Youssef'),
    StoryModel(image: 'assets/c.png', text: 'Ganna'),
    StoryModel(image: 'assets/b.png', text: 'Hoda'),
    StoryModel(image: 'assets/d.png', text: 'Somia'),
    StoryModel(image: 'assets/e.png', text: 'Zezo'),
    StoryModel(image: 'assets/f.png', text: 'Yasmeen'),
    StoryModel(image: 'assets/b.png', text: 'Hoda'),
    StoryModel(image: 'assets/d.png', text: 'Somia'),
    StoryModel(image: 'assets/e.png', text: 'Zezo'),
    StoryModel(image: 'assets/f.png', text: 'Yasmeen'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                (index != 0)
                    ? Stack(children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('${item[index].image}'),
                          radius: 35,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                color: Colors.green,
                                border:
                                    Border.all(color: Colors.black, width: 15)),
                          ),
                        ),
                      ])
                    : CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                        radius: 35,
                      ),
                Text(
                  '${item[index].text}',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
