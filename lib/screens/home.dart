import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconButtonHome {
  IconButtonHome({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  final IconData icon;
  final String text;
  final Function onPressed;
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Guru'),
        actions: [
          IconButton(
              onPressed: () => Get.toNamed('/notification'),
              icon: const Icon(Icons.notifications)),
          IconButton(
              onPressed: () => Get.toNamed('/chat'),
              icon: const Icon(Icons.chat_outlined)),
          IconButton(
              onPressed: () => Get.toNamed('/search'),
              icon: const Icon(Icons.search)),
          InkWell(
            onTap: () => Get.toNamed('/profile'),
            child: CircleAvatar(
              // backgroundImage: NetworkImage(userAvatarUrl),
              backgroundColor: Colors.brown.shade800,
              radius: 20,
              child: const Text('AH'),
            ),
          ),
          const SizedBox(width: 10),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 5,
                        children: [
                          ...['Home', 'Quiz', 'Ujian', 'Meet', 'Tugas']
                              .map((e) => InkWell(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.home,
                                          size: 40,
                                        ),
                                        Text(e),
                                      ],
                                    ),
                                  ))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Image.network('https://picsum.photos/300/200'),
                      Image.network('https://picsum.photos/300/200'),
                      Image.network('https://picsum.photos/300/200'),
                      Image.network('https://picsum.photos/300/200'),
                      Image.network('https://picsum.photos/300/200'),
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
