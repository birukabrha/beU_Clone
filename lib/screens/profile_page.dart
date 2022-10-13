import 'package:beu_clone/list.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mode_edit_outline,
                color: Colors.deepOrange,
                size: 28,
              ))
        ],
      ),
      body: SizedBox(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              // color: Colors.lightBlue,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/6f/9f/9c/6f9f9c0739334654a74e7e1509721263.jpg',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  Text(
                    'Biruk',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '+251911111198',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 400,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: profileItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: profileItems[index]['icon'],
                    title: Row(
                      children: [
                        Expanded(
                            child: Text(
                          profileItems[index]['text'],
                          style: const TextStyle(fontSize: 13),
                        )),
                        profileItems[index]['following'],
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
