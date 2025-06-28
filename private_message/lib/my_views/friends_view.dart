import 'package:flutter/material.dart';
import 'package:private_message/my_views/message_view.dart';
import 'package:private_message/my_views/setin_view.dart';

class FriendsView extends StatefulWidget {
  const FriendsView({super.key});

  @override
  State<FriendsView> createState() => _FriendsViewState();
}

class _FriendsViewState extends State<FriendsView> {
  final List<String> activeFriends = [
    'https://i.pravatar.cc/150?img=5',
    'https://i.pravatar.cc/150?img=7',
    'https://i.pravatar.cc/150?img=8',
    'https://i.pravatar.cc/150?img=9',
    'https://i.pravatar.cc/150?img=10',
  ];

  final List<Map<String, String>> friendList = [
    {'name': 'Carlos Ramírez', 'image': 'https://i.pravatar.cc/150?img=3'},
    {'name': 'Lucía Torres', 'image': 'https://i.pravatar.cc/150?img=4'},
    {'name': 'Mario Gómez', 'image': 'https://i.pravatar.cc/150?img=6'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            //logica de menu
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SetinView()),
            );
          },
        ),
        title: const Text('Mis Amigos', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black),
            onPressed: () {
              //logica
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar amigo...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          //amigos activos
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: activeFriends.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                return CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(activeFriends[index]),
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          //Lista de amigos
          Expanded(
            child: ListView.builder(
              itemCount: friendList.length,
              itemBuilder: (context, index) {
                final friend = friendList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MessageView()),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(friend['image']!),
                        ),
                        title: Text(
                          friend['name']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat_sharp), label: 'Chats'),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_outlined),
            label: 'Amigos',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu_sharp), label: 'Menu'),
        ],
      ),
    );
  }
}
