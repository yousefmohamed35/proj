import 'package:flutter/material.dart';
import 'package:proj/model/Chats_models.dart';

class Chat extends StatelessWidget {
  Chat({super.key});
  List<ChatModel> item = [
    ChatModel(
        image: 'assets/a.png',
        name: 'Youssef',
        text: 'Hello , How Are you bro '),
    ChatModel(image: 'assets/b.png', name: 'Hoda', text: 'Good night'),
    ChatModel(
        image: 'assets/c.png',
        name: 'Ganna',
        text: 'Hello , How Are you bro kc qjtoqvjtjvq qkt '),
    ChatModel(
        image: 'assets/d.png',
        name: 'Somia',
        text: 'Hello , How Are you bro kgj krjjrj jqqkjtqjtq'),
    ChatModel(
        image: 'assets/f.png',
        name: 'Yasmin',
        text: 'tjc jtkvwlj q.jqj j  jqkjttqk'),
    ChatModel(
        image: 'assets/e.png', name: 'ZEZO', text: 'orito ek iw,ne wenwk k'),
    ChatModel(
        image: 'assets/a.png',
        name: 'Atallah',
        text: 'jhd eh wj  r j rkqk nnwe'),
    ChatModel(
        image: 'assets/b.png', name: 'Ebrahim', text: 'roitowq vow tvjwt qw'),
    ChatModel(image: 'assets/c.png', name: 'Sayed', text: 'jorje gojjgekgskl '),
    ChatModel(
        image: 'assets/d.png',
        name: 'Mohamed',
        text: 'Hello , ehfecjh riwer ieyuehqw ehfqjc rceh ewj cej vt'),
    ChatModel(
        image: 'assets/e.png',
        name: 'Mohamed Ahmed',
        text: 'ihewiafhca nfc jehf cdfjej jejwqj'),
    ChatModel(
        image: 'assets/a.png',
        name: 'Youssef',
        text: 'Hello , How Are you bro '),
    ChatModel(image: 'assets/b.png', name: 'Hoda', text: 'Good night'),
    ChatModel(
        image: 'assets/c.png',
        name: 'Ganna',
        text: 'Hello , How Are you bro kc qjtoqvjtjvq qkt '),
    ChatModel(
        image: 'assets/d.png',
        name: 'Somia',
        text: 'Hello , How Are you bro kgj krjjrj jqqkjtqjtq'),
    ChatModel(
        image: 'assets/f.png',
        name: 'Yasmin',
        text: 'tjc jtkvwlj q.jqj j  jqkjttqk'),
    ChatModel(
        image: 'assets/e.png', name: 'ZEZO', text: 'orito ek iw,ne wenwk k'),
    ChatModel(
        image: 'assets/a.png',
        name: 'Atallah',
        text: 'jhd eh wj  r j rkqk nnwe'),
    ChatModel(
        image: 'assets/b.png', name: 'Ebrahim', text: 'roitowq vow tvjwt qw'),
    ChatModel(image: 'assets/c.png', name: 'Sayed', text: 'jorje gojjgekgskl '),
    ChatModel(
        image: 'assets/d.png',
        name: 'Mohamed',
        text: 'Hello , ehfecjh riwer ieyuehqw ehfqjc rceh ewj cej vt'),
    ChatModel(
        image: 'assets/e.png',
        name: 'Mohamed Ahmed',
        text: 'ihewiafhca nfc jehf cdfjej jejwqj'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SliverList.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            child: Row(
              children: [
                Stack(children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('${item[index].image}'),
                    radius: 35,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 15)),
                      ),
                    ),
                  )
                ]),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${item[index].name}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${item[index].text}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
